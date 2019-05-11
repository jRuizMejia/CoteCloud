using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Collections.Specialized;
using System.Web.Security;
using System.Security.Principal;
namespace Cote_Cloud
{
    public partial class report : System.Web.UI.Page
    {
        public void setName(string Name,string Mode)
        {
            Session["nomRepor"] = Name;
            Session["modRepor"] = Mode;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["modRepor"]!= null)
                {
                    transacciones.TransPreMatricula llamada = new transacciones.TransPreMatricula();
                    reporte.LocalReport.DataSources.Clear();
                    reporte.LocalReport.DataSources.Add(new ReportDataSource("Datos", llamada.getReportStudent(Session["nomRepor"].ToString())));
                    reporte.LocalReport.ReportPath = "RegPreMatricula/ReportPreRegistro.rdlc";
                    reporte.LocalReport.Refresh();
                    Session["modRepor"] = null;
                    Warning[] warnings;
                    string[] streamids;
                    string mimeType;
                    string encoding;
                    string extension;
                    byte[] rep = reporte.LocalReport.Render("WORD", null, out mimeType, out encoding, out extension, out streamids, out warnings);
                    if (Session["creandoNuevoEstudiante"] != null)
                    {
                        string path = Server.MapPath("~/datos/");
                        path = Path.Combine(path, "Matricula de " + Session["nomRepor"].ToString() + ".doc");
                        FileStream fs = new FileStream(path, FileMode.Create);
                        fs.Write(rep, 0, rep.Length);
                        fs.Dispose();
                    }
                    Session["creandoNuevoEstudiante"] = null;
                    Response.Clear();
                    Response.ContentType = "application/msword";
                    Response.AddHeader("content-disposition", "attachment; filename= Datos de " + Session["nomRepor"].ToString() + ".doc");
                    Response.OutputStream.Write(rep, 0, rep.Length);
                    Response.Flush();
                    Response.End();
                    string jScript = "<script>window.close();</script>";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "keyClientBlock", jScript);
                }
                else
                {
                    datos.clReport reportes = new datos.clReport();
                    DataSet ds = reportes.re();
                    if (reporte.LocalReport.DataSources.Count == 0)
                    {
                        if (reportes.returnRows() == 0) { Response.Redirect("~/LogIn/InicioSesion.aspx"); }
                        else
                        {
                            reporte.LocalReport.DataSources.Add(new ReportDataSource(ds.DataSetName, ds.Tables[0]));
                        }
                    }
                    else { reporte.LocalReport.DataSources[0] = new ReportDataSource(ds.DataSetName, ds.Tables[0]); }
                    reporte.LocalReport.LoadReportDefinition(reportes.GetRprtStream(16));
                    reportes.setEmptyRows();
                }
                reporte.LocalReport.Refresh();
                reporte.ShowExportControls = false;
            }
        }

        protected void btnExcel_Click(object sender, EventArgs e)
        {
            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;
            byte[] rep = reporte.LocalReport.Render("EXCEL", null, out mimeType, out encoding, out extension, out streamids, out warnings);
            Response.Clear();
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("content-disposition", "attachment; filename= Reporte.xls");
            Response.Buffer = true;
            Response.OutputStream.Write(rep, 0, rep.Length);
            Response.OutputStream.Flush();
            Response.End();
        }

        protected void btnWord_Click(object sender, EventArgs e)
        {
            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string extension;
            byte[] rep = reporte.LocalReport.Render("WORD", null, out mimeType, out encoding, out extension, out streamids, out warnings);
            Response.Clear();
            Response.ContentType = "application/msword";
            Response.AddHeader("content-disposition", "attachment; filename= Reporte.doc");
            Response.OutputStream.Write(rep, 0, rep.Length);
            Response.Flush();
            Response.End();
        }
    }
}