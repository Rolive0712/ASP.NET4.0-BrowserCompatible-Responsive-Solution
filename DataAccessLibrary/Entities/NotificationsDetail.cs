using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLibrary.Entities
{
     [Serializable]
    public class NotificationsDetail
    {
        public string EntityID { set; get; }
        public string SDLC_projectid { get; set; }
        public string RouteMapId { get; set; }
        public string Iteration { get; set; }
        public string Sector_id { get; set; }
        public string taskid { get; set; }
        public string Artifactid { get; set; }
        public string ArtiTypeId { get; set; }
        public string DisplayID { get; set; }
        public string EntityName { set; get; }
        public string Manager { set; get; }
        public string Notification_Desc { get; set; }
        public string pv_prog_id { set; get; }
        public string Details { get; set; }
        public string Notification_Help { get; set; }
        public string DetailsVal { get; set; }
        public string mod_id { get; set; }
        
    }
}
