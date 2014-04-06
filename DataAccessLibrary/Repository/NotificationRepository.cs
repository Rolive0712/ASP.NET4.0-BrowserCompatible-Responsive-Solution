using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Dapper;
using DataAccessLibrary.Entities;
using DataAccessLibrary.Utility;
using System.Data;
using System.Data.SqlClient;


namespace DataAccessLibrary.Repository
{

    public interface INotificationRepository
    {
        string GetFullName(string soeid);
        IEnumerable<NotificationsDetail> GetNotificationsList(string empId, int RoleId, string NotificationTypeIds, bool BOWFlag);
    }
   
    public class NotificationRepository : INotificationRepository
    {
        private Emailer emailer = new Emailer();
        public string GetFullName(string soeid)
        {
            string fullname = null;
            try
            {
                var query = "select last_name +', ' + first_name as 'FullName' from person where tso_id = @soeid";
                using (var db = BaseUtility.OpenConnection())
                {
                    fullname = db.Query<string>(query, new { soeid = soeid }).SingleOrDefault();
                }
            }
            catch (Exception ex)
            {
                emailer.SendMailOnException(ex.Message);
            }
            return fullname;
        }

        public IEnumerable<NotificationsDetail> GetNotificationsList(string empId, int RoleId, string NotificationTypeIds, bool BOWFlag)
        {
            IEnumerable<NotificationsDetail> list = null;
            try
            {
                using (var db = BaseUtility.OpenConnection())
                {
                     list = db.Query<NotificationsDetail>("PMTDB.dbo.usp_GetProjectNotifications",
                        new { Id = empId, role = RoleId, NotificationTypeID = NotificationTypeIds, BOW_Flag_Bit = BOWFlag }, commandType: CommandType.StoredProcedure);//.ToList();
                }

            }
            catch (Exception ex)
            {
                emailer.SendMailOnException(ex.Message);
            }
            return list;
        }
    }
}
