using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cote_Cloud
{
    public partial class problem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Exception Ex = Server.GetLastError();
            if (Ex != null)
            {
                HttpException httpEx = Ex as HttpException;
                if (httpEx != null)
                {
                    Cote_Cloud.User.email correo = new Cote_Cloud.User.email();
                    correo.MailTo = System.Configuration.ConfigurationManager.AppSettings.Get("Destinatario").ToString();
                    correo.MailSubject = "Error de ejecución en la plataforma";
                    string mensaje = httpEx.Message.ToString();
                    if (httpEx.InnerException != null)
                    {
                        mensaje += " <hr/> "+httpEx.InnerException.Message.ToString();
                    }
                    for(int a =1; a < 1000; a++)
                    {
                        if(System.Configuration.ConfigurationManager.AppSettings.Get("Destinatario" + a.ToString()) != null)
                        {
                            string emailRecipient = System.Configuration.ConfigurationManager.AppSettings.Get("Destinatario" + a.ToString()).ToString();
                            if (emailRecipient != null) correo.MailCCRecipients.Add(emailRecipient);
                            else break;
                        }
                        else break;
                    }
                    correo.mensaje = mensaje;
                    correo.SendMail();
                }
            }
            else
            {
                Response.Redirect(@"~\LogIn\InicioSesion.aspx");
            }
            Server.ClearError();

        }
    }
}