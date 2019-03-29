using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace main
{
    public class inserts
    {
        SqlDB sql = new SqlDB();
        string str = "";
        public bool judge(string no)
        {
            str = "select * from student where remark2='"+no+"'";
            DataTable dt = sql.FillDt(str);
            if (dt == null)
            {
                return false;
            }
            else
            {
                if (dt.Rows.Count > 0)
                    return false;
            }
            return true;
        }
        public bool insert(string name,string classs,string sex,string tel,string qq,string remark,string no)
        {
            str = "insert into student (name,[class],sex,tel,qq,remark1,remark2) values('"+name+"','"+classs+"','"+sex+"','"+tel+"','"+qq+"','"+remark+"','"+no+"')";
            return sql.ExecSql(str);
        }


    }
}