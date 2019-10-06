<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        h2, h3 {
            color: rgb(73, 73, 73);
        }

        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }

        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }

        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-btn img {
            width: 50%;
            height: 50%;
        }


        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6 {
            height: 400px;
            padding-right: 10px;
        }

        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="书名、作者、ISBN" class="search-input">
    <div class="search-btn">
        <img src="${pageContext.request.contextPath}/images/search.png" alt="">
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="col-4">
                <div class="right">
                    <h2>推荐阅读</h2>
                    <hr>
                    <p>《逃命吧作者君》</p>
                    <br/>
                    <p>《万象之主》</p>
                    <br/>
                    <p>《玩家凶猛》</p>
                    <br/>
                    <p>《烂柯棋缘》</p>
                    <br/>
                    <p>《最佳特摄时代》</p>
                    <br/>
                    <p>《亏成首付从游戏开始》</p>
                    <br/>
                    <p>《瘟疫医生》</p>
                    <br/>
                    <p>《绝对一番》</p>
                    <br/>
                    <p>《文学入侵》</p>
                    <br/>
                    <p>《从艺术家开始》</p>
                    <br/>
                    <p>《诡秘之主》</p>
                    <br/>
                    <p>《宰执天下》</p>
                    <br/>
                    <p>《重生之官路商途》</p>
                </div>
            </div>

</div>
</body>
</html>
