using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(YemekTarifleriSitem.Startup))]
namespace YemekTarifleriSitem
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
