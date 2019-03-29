using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace main
{
    /// <summary>
    /// insert1 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
     [System.Web.Script.Services.ScriptService]
    public class insert1 : System.Web.Services.WebService
    {
        inserts i = new inserts();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string insert(string name, string classs,string sex,string tel, string qq, string remark,string no)
        {
            i.insert(name, classs,sex,tel, qq, remark,no);
            return "";
        }
        [WebMethod]
        public string judge(string no)
        {
            if (i.judge(no))
            {
                return "";
            }
            else
            {
                return "该生已经成功报名，请勿重复提交，谢谢合作！";
            }
        }
    }
}
