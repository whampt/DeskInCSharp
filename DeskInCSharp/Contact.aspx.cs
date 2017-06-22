using System;
using System.IO;
using System.Net.Mail;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeskInCSharp
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string fileName = Server.MapPath("~/App_Data/Contact.txt");
                string mailBody = File.ReadAllText(fileName);

                mailBody = mailBody.Replace("##Name##", (FirstName.Text + " " + LastName.Text));
                mailBody = mailBody.Replace("##Email##",Email.Text);
                mailBody = mailBody.Replace("##Comments##", Comments.Text);

                MailMessage msg = new MailMessage();
                msg.Subject = "DeskInCSharp Comments from Web";
                msg.Body = mailBody;

                msg.From   = new MailAddress("email@provider.deez", "Sender Name");
                msg.To.Add(new MailAddress("email@provider.deex", "Receiver Name"));

                SmtpClient client = new SmtpClient("localhost");
                client.Send(msg);

                Message.Visible = true;
                EnterComments.Visible = false;
            }
        }
    }
}