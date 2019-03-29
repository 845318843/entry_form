<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="main.main" %>

<!DOCTYPE html>
<html>
<head>
    <title>九州通工作室报名表单</title>
    <style type="text/css">
        .mydiv li {
            float: left;
            width: 10%;
        }

        .mydiv a {
            display: block;
        }
    </style>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
    <script src="Js/jquery-1.9.1.min.js" type="text/javascript"></script>
      <script src="Js/insert.js" type="text/javascript"></script>
    <script src="Js/fuyun001.js" type="text/javascript"></script>
    <link href="css/pageheader.css" rel="stylesheet" type="text/css" />
    <link href="css/AspNetPager.css" rel="stylesheet" type="text/css" />
   <%-- <link href="css/index.css" rel="stylesheet" type="text/css" />--%>
    <style type="text/css">
        body {
            background: url("images/44.jpg");
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form999">
        <div class="maindiv" id="div1">
             <div class="mytitle">
              九州通工作室报名表单
                </div>
            <div class="maindiv">
                <div class="maindivhrheader">报名</div>
                <table class="createtb"  >
                    <tr>
                        <td>姓名：
</td>
                        <td>
                            <input name="txtname" runat="server" type="text" id="name" />
                        </td>
                    </tr>
                    <tr>
                        <td>性别：
</td>
                        <td>
                            <select name="DDLBelong" runat="server" id="sex" style="width:100px">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </td>
                    </tr>
                     <tr>
                        <td>学号：
</td>
                        <td>
                            <input name="txtname" runat="server" type="text" id="no" />
                        </td>
                    </tr>
                    <tr>
                        <td>班级：
</td>
                        <td>
                            <input name="txtname" runat="server" type="text" id="class" />
                        </td>
                    </tr>
                     <tr>
                        <td>电话：
</td>
                        <td>
                            <input name="txtname" runat="server" type="text" id="tel" />
                        </td>
                    </tr>
                     <tr>
                        <td>QQ号:
</td>
                        <td>
                            <input name="txtname" runat="server" type="text" id="qq" />
                        </td>
                    </tr>
                     <tr>
                        <td>个人描述:
</td>
                        <td>
                           <textarea id="des" runat="server" rows="11" cols="20"  style="width:340px;height:80px"></textarea>
                        </td>
                    </tr>
                          <tr>
                        <td>
</td>
                        <td>
                       <input  type="button" value="提交" id="in"/>
                        <input  type="button" value="重置" id="reset"/>
                        </td>
                    </tr>
                </table>
                
            </div>
        </div>
    </form>
</body>
</html>
