using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.FriendlyUrls;
namespace SchoolProjectArosh
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);

            RouteTable.Routes.EnableFriendlyUrls();
            Routinlink(RouteTable.Routes);

        }
        void Routinlink(RouteCollection routes)
        {
            routes.MapPageRoute(
                routeName:"ApplyOnline",
                routeUrl:"Page/Student",
                physicalFile: "~/Pages/Student/StudentInformation.aspx"

                );
            routes.MapPageRoute(
                routeName: "ApplyOnlineParent",
                routeUrl: "Page/ParentInfo",
                physicalFile: "~/Pages/Student/ParentInformation.aspx"
                ) ;

        }
    }
}