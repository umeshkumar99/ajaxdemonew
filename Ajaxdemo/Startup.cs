using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ajaxdemo.Startup))]
namespace Ajaxdemo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
