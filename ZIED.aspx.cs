using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Globalization;
using System.IO;
using System.Net;
using System.Text;


public partial class ZIED: System.Web.UI.Page
{


    public BusinessLayer objbus = new BusinessLayer();
    public PropertyLayer objprop = new PropertyLayer();
    public DataSet DsSelection = new DataSet();

    public DataTable dt = new DataTable();
    public DataSet ds = new DataSet();
    public DataSet ds1 = new DataSet();

    int rwcnt;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
          
            
        } 
    }
    protected void ZIED_Click(object sender, EventArgs e)
     {
         objbus.DeleteZIED(objprop);
         objprop.txtPlant=txtPlant.SelectedValue;
         objprop.txtFrom = txtFrom.Text;
         objprop.txtTO = txtTO.Text;
        if (upload.FileName == "")
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), " myscript", "alert('Please select Excel file');", true);

        }
        else
        {
            
            string CurrentFilePath = Path.GetFullPath(upload.PostedFile.FileName);
            objprop.FApath = CurrentFilePath; 
            ds = objbus.ExceltoGridSalary(objprop);

            InsertDetails();
                     
        }

    }

   

    protected void InsertDetails()
    {
       
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            //objprop.PLANT = dr.ItemArray[1].ToString();

            // if (objprop.PLANT == objprop.txtPlant)
            // {

             
                     objprop.Section = dr.ItemArray[0].ToString();
                     objprop.Workcenter = dr.ItemArray[1].ToString();
                     objprop.shift= dr.ItemArray[2].ToString();

                     objprop.Empcode = dr.ItemArray[3].ToString();
                     objprop.Area = dr.ItemArray[7].ToString();
                     objprop.Grade = dr.ItemArray[8].ToString();
                 
                   


                     string t111 = dr.ItemArray[10].ToString();
                     t111 = t111.Remove(0, 11);
                     string t11 = DateTime.ParseExact(t111, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("HH:mm:ss", CultureInfo.InvariantCulture);
                     objprop.t11 = t11;


                     string HH = DateTime.ParseExact(t111, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("HH", CultureInfo.InvariantCulture);
                     string MM = DateTime.ParseExact(t111, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("mm", CultureInfo.InvariantCulture);
                     float flt1 = float.Parse(HH);
                     float flt2 = float.Parse(MM);
                     float R = (flt1 * 60) + flt2;









                     string t112 = dr.ItemArray[11].ToString();
                     t112 = t112.Remove(0, 11);
                     string t12 = DateTime.ParseExact(t112, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("HH:mm:ss", CultureInfo.InvariantCulture);
                     objprop.t12 = t12;


                     string HH1 = DateTime.ParseExact(t112, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("HH", CultureInfo.InvariantCulture);
                     string MM1 = DateTime.ParseExact(t112, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("mm", CultureInfo.InvariantCulture);

                     float flt11 = float.Parse(HH1);


                     float flt22 = float.Parse(MM1);
                     float L = (flt11 * 60) + flt22;

                     objprop.SAP_t = R + L;
            


            if(objprop.SAP_t>480)

            {
                objprop.SAP_t = 480;
            }


                     objprop.NROMS= dr.ItemArray[14].ToString();
                    objprop.char1= dr.ItemArray[15].ToString();
              string Date= dr.ItemArray[16].ToString();
              string Date1 = DateTime.ParseExact(Date, "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture).ToString("yyyy/MM/dd", CultureInfo.InvariantCulture);
                 objprop.Date = Date1;
                  
                     objbus.InsertDetails(objprop);
             
    }
   

    }
    //protected void ypr07()
    //{
    //    objbus.DeleteVendorDetails1(objprop);
    //    foreach (DataRow dr in ds.Tables[0].Rows)
    //    {
    //        objprop.PLANT = dr.ItemArray[2].ToString();

    //        if (objprop.PLANT == objprop.txtPlant)
    //        {



    //            string SAP_DATE = dr.ItemArray[3].ToString();
    //            string SAP1_DATE = DateTime.ParseExact(SAP_DATE, "dd.MM.yyyy", CultureInfo.InvariantCulture).ToString("yyyy/MM/dd", CultureInfo.InvariantCulture);
    //            objprop.SAP_DATE = SAP1_DATE;

    //            objprop.DATE = SAP1_DATE;
    //            objprop.SHIFT = dr.ItemArray[5].ToString();
    //            objprop.SECTION = dr.ItemArray[6].ToString();
    //            objprop.WORKCENTER = dr.ItemArray[8].ToString();
    //            objprop.WORKSHEETNO = dr.ItemArray[11].ToString();
    //            objprop.WRKSHETCTRNO = dr.ItemArray[12].ToString();
    //            objprop.EMPCODE = dr.ItemArray[13].ToString();
    //            objprop.EMPNAME = dr.ItemArray[14].ToString();
    //            objprop.GRADE = dr.ItemArray[15].ToString();
    //            objprop.ACTGRADE = dr.ItemArray[16].ToString();

    //            string HOURSWRKD = dr.ItemArray[17].ToString();
    //            string HOURSWRKD2 = DateTime.ParseExact(HOURSWRKD, "dd/MM/yyyy hh:mm:ss", CultureInfo.InvariantCulture).ToString("hh:mm:ss", CultureInfo.InvariantCulture);
    //            objprop.HOURSWRKD = HOURSWRKD2;
                
             

    //            objprop.YieldQty = dr.ItemArray[18].ToString();
    //            objprop.AREAWRKED = dr.ItemArray[19].ToString();

            
    //            string ACTHRSWRKD = dr.ItemArray[20].ToString();
    //         ACTHRSWRKD = ACTHRSWRKD.Remove(0, 11);
    //            string ACTHRSWRKD2 = DateTime.ParseExact(ACTHRSWRKD, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("HH:mm:ss", CultureInfo.InvariantCulture);
    //            objprop.ACTHRSWRKD = ACTHRSWRKD2;


    //             objprop.SHIFTCHNG = dr.ItemArray[21].ToString();
    //            objprop.REPLACEID = dr.ItemArray[22].ToString();
  
            
              	
                
    //            objprop.ABSENTIND = dr.ItemArray[23].ToString();
    //                          objprop.DIRECTINDIRECT = dr.ItemArray[24].ToString();
    //            objprop.REMARKS = dr.ItemArray[25].ToString();
    //            objprop.OTIND = dr.ItemArray[26].ToString();

    //            string UPDATEDATE = dr.ItemArray[27].ToString();
    //            string UPDATEDATE2 = DateTime.ParseExact(UPDATEDATE, "dd.MM.yyyy", CultureInfo.InvariantCulture).ToString("yyyy/MM/dd", CultureInfo.InvariantCulture);
    //            objprop.UPDATEDATE = UPDATEDATE2;

               
    //            string UPDATETIME = dr.ItemArray[28].ToString();
    //            UPDATETIME = UPDATETIME.Remove(0, 11);
    //            string UPDATETIME2 = DateTime.ParseExact(UPDATETIME, "HH:mm:ss", CultureInfo.InvariantCulture).ToString("HH:mm:ss", CultureInfo.InvariantCulture);
    //            objprop.UPDATETIME = UPDATETIME2;

            
    //            objprop.POINT = dr.ItemArray[29].ToString();
    //            objprop.OPTR = dr.ItemArray[30].ToString();
    //            objbus.Insert07(objprop);
    //        }
    //    }


    //}
    //protected void R07_Click(object sender, EventArgs e)
    //{
    //    objprop.txtPlant = txtPlant.SelectedValue;
    //    objprop.txtFrom = txtFrom.Text;
    //    objprop.txtTO = txtTO.Text;
    //    if (upload.FileName == "")
    //    {
    //        ScriptManager.RegisterStartupScript(Page, GetType(), " myscript", "alert('Please select Excel file ');", true);

    //    }
    //    else
    //    {

    //        string CurrentFilePath = Path.GetFullPath(upload.PostedFile.FileName);
    //        objprop.FApath = CurrentFilePath;
    //        ds = objbus.ExceltoGrid07(objprop);

    //        ypr07();

    //    }
    //}
}