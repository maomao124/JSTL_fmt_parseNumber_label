<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fmt_parseNumber_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/3
  Time(创建时间)： 16:13
  Description(描述)：
  JSTL <fmt:parseNumber> 标签用于解析数字、货币和百分比。
JSP <fmt:parseNumber> 标签的语法如下：
<fmt:parseNumber
  value="number"
  type="number|currency|percent"
  pattern="customPattern"
  [parseLocale="parseLocale"]
  [integerOnly="true|false"]
  var="varname"
  scope="page|request|session|application"/>
其中，[ ] 中的内容为可选项
参数	        说明
value	需要解析的数字
type	设定数字的单位，有 3 种：number（数字）、currency（货币）、percent（百分比）
pattern	设定显示的格式
integerOnly	设置是否只输出整数部分
parseLocale	解析数字时所用的区域
var	代表格式化后的数字，如果设定了该参数，需要使用 <c:out> 标签输出
scope	设定参数 var 的有效范围，默认为 page。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="num" value="56852.65458" scope="session"/>
<fmt:parseNumber var="n" type="number" value="${num}" />
<c:out value="${n}" />
<fmt:parseNumber var="n" integerOnly="true" type="number" value="${num}" />
<br/>
只输出整数部分：
<c:out value="${n}" />
</body>
</html>
