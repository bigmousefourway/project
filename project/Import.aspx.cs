using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using NPOI.HSSF.UserModel;
using NPOI.XSSF.UserModel;
using NPOI.SS.UserModel;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class import : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public void ReadFromExcelFile(string filePath)
        {
            
            IWorkbook wk = null;
            string extension = System.IO.Path.GetExtension(filePath);
            try
            {
                FileStream fs = File.OpenRead(filePath);
                if (extension.Equals(".xls"))
                {
                    wk = new HSSFWorkbook(fs);
                }
                else if (extension.Equals(".xlsx"))
                {
                    wk = new XSSFWorkbook(fs);
                }
                fs.Close();
                DataTable dt = new DataTable();
                ISheet sheet = wk.GetSheetAt(0);
                IRow row = sheet.GetRow(0);
                string text = string.Empty;
                for (int colIdx = 0; colIdx <= row.LastCellNum; colIdx++)
                {

                    if (row.GetCell(colIdx) != null)
                    {
                        dt.Columns.Add(new DataColumn(row.GetCell(colIdx).StringCellValue));
                    }
                }
                for (int rowIdx = 1; rowIdx <= sheet.LastRowNum; rowIdx++)
                {
                    IRow row2 = sheet.GetRow(rowIdx);
                    DataRow newDataRow = dt.NewRow();
                    for (int colIdx = row2.FirstCellNum; colIdx <= row2.LastCellNum; colIdx++)
                    {
                        ICell cell = sheet.GetRow(rowIdx).GetCell(colIdx);

                        if (row2.GetCell(colIdx) != null)
                        {
                            switch (cell.CellType)
                            {
                                case CellType.Numeric:
                                    if (DateUtil.IsCellDateFormatted(cell))
                                    {
                                        newDataRow[colIdx] = row2.GetCell(colIdx).DateCellValue.ToString();
                                    }

                                    else
                                    {
                                        newDataRow[colIdx] = row2.GetCell(colIdx).NumericCellValue.ToString();
                                    }
                                    break;
                                case CellType.String:
                                    newDataRow[colIdx] = row2.GetCell(colIdx).StringCellValue;
                                    break;
                                case CellType.Formula:

                                    newDataRow[colIdx] = row2.GetCell(colIdx).CellFormula;
                                    break;
                                default:
                                    newDataRow[colIdx] = row2.GetCell(colIdx).StringCellValue;
                                    break;
                            }



                        }
                    }
                    dt.Rows.Add(newDataRow);
                }
                

                string localCon = "Data Source=DESKTOP-31ROI1J\\SQLEXPRESS;Initial Catalog=test;uid=sa2;password=a34295151";
                DataTableToSQLServer(dt, localCon);
            }
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                //釋放 NPOI的資源
                wk = null;

            }

        }
        public  void DataTableToSQLServer(DataTable dt, string connectString)
        {
            
            string connectionString = connectString;

            using (SqlConnection destinationConnection = new SqlConnection(connectionString))
            {
                destinationConnection.Open();

                using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destinationConnection))
                {


                    try
                    {
                        bulkCopy.DestinationTableName = "dbo.goods";//要插入的表的表名
                        bulkCopy.BatchSize = dt.Rows.Count;
                        bulkCopy.ColumnMappings.Add("訂單編號", "Gnum");
                        bulkCopy.ColumnMappings.Add("產品名稱", "Pname");//對映欄位名 DataTable列名 ,資料庫 對應的列名
                        bulkCopy.ColumnMappings.Add("產品溫層", "Ptype");
                        bulkCopy.ColumnMappings.Add("數量", "Amount");
                        bulkCopy.ColumnMappings.Add("訂單店家", "Sname");



                        bulkCopy.WriteToServer(dt);
                        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('匯入成功!');window.location='Employee.aspx'</script>");
                        
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                    finally
                    {


                    }
                }


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            String savePath = "C:\\temp\\uploads\\";
            if (FileUpload1.HasFile)
            {
                String fileName = FileUpload1.FileName;
                savePath = savePath + fileName;
                FileUpload1.SaveAs(savePath);
                
                ReadFromExcelFile(savePath);
            }
            else
            {
                //Label1.Text = "沒有偵測到檔案";
            }
        }

       
    }
}