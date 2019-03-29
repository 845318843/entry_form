var name, sex, qq, tel, des, classs,no;
$(function () {
    name = "";
    sex = "";
    qq = "";
    tel = "";
    des = "";
    classs = "";
    no = "";
    $("#in").click(function () {
        name = $("#name").val();
        sex = $("#sex").find("option:selected").text();
        qq = $("#qq").val();
        tel = $("#tel").val();
        des = $("#des").val();
        classs = $("#class").val();
        no = $("#no").val();
        var htmltxt = "";
        $.ajax({
            type: "post",
            contentType: "application/json",
            url: "insert.asmx/judge",
            data: '{"no":"' + no + '"}',
            dataType: "json",
            async: false,
            success: function (result) {
                if (result.d == "") {
                    insert();
                }
                else {
                    alert(result.d);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR + textStatus + errorThrown);
            }
        });
    })
    $("#reset").click(function () {
        $("#name").val("");
        $("#sex").val("");
        $("#tel").val("");
        $("#class").val("");
        $("#des").val("");
        $("#qq").val("");
        $("#no").val("");
    })
})
function insert() {
    var htmltxt = "";
    $.ajax({
        type: "post",
        contentType: "application/json",
        url: "insert.asmx/insert",
        data: '{"name":"' + name + '","classs":"' + classs + '","sex":"' + sex + '","tel":"' + tel + '","qq":"' + qq + '","remark":"' + des + '","no":"' + no + '"}',
        dataType: "json",
        async: false,
        success: function (result) {
            alert("你已成功报名！");
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR + textStatus + errorThrown);
        }
    });
}
