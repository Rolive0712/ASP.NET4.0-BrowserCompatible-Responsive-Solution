using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using DataAccessLibrary.Repository;
using DataAccessLibrary.Entities;
using System.Web.Script.Serialization;

namespace <name here..>
{
    /// <summary>
    /// Summary description for PTSNotifications
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [ScriptService]
    public class PTSNotifications : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetNotificationsList(string empId, int RoleId, string NotificationTypeIds, bool BOWFlag)
        {
            INotificationRepository nr = new NotificationRepository();
            //System.Threading.Thread.Sleep(5000);
            var notifications = nr.GetNotificationsList(empId, RoleId, NotificationTypeIds, BOWFlag);
            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(notifications);
        }
    }
}
