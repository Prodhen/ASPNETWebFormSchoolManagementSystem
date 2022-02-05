using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SchoolProjectArosh.Startup))]
namespace SchoolProjectArosh
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
