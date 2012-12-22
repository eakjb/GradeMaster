<%@ page import="com.grademaster.*" %>
<%@ page import="com.grademaster.data.objects.*" %>
<% User user = null;
if (session.getAttribute("loggedIn")!=null&&(Boolean) session.getAttribute("loggedIn")==true) {
	user =(User) session.getAttribute("user"); 
}

Config iConfig = Globals.getConfig(); %>
<div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.do"><% if (session.getAttribute("loggedIn")!=null&&(Boolean)session.getAttribute("loggedIn")==true) { %>
                    <%= iConfig.namePrefix %><%= user.getName() %>
                    <% } else { %>
                    <%= iConfig.namePrefix %><%= iConfig.name %>
                    <% } %></a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active"><a href="index.do">Home</a></li>
                            <li><a href="about.jsp">About</a></li>
                            <% if (session.getAttribute("loggedIn")!=null&&(Boolean) session.getAttribute("loggedIn")==true) { %>
                            <li><a href="todo.do">To-Do List</a></li>
                            <li><a href="calendar.do">Calendar</a></li>
                            <li><a href="gradebook.do">Gradebook</a></li>
                            <li class="dropdown">
                                <a href="classes_overview.do" class="dropdown-toggle" data-toggle="dropdown">Classes <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                	<li><a href="classes_overview.do">Overview</a>
                                	<li class="divider"></li>
                                    <li class="nav-header">Core Classes</li>
                                    <li><a href="class.do?id=1"><%= iConfig.namePrefix %>CLASS1NAME</a></li>
                                    <li><a href="class.do?id=2"><%= iConfig.namePrefix %>CLASS2NAME</a></li>
                                    <li><a href="class.do?id=3"><%= iConfig.namePrefix %>CLASS3NAME</a></li>
                                    <li><a href="class.do?id=4"><%= iConfig.namePrefix %>CLASS4NAME</a></li>
                                    <li><a href="class.do?id=5"><%= iConfig.namePrefix %>CLASS5NAME</a></li>
                                    <li class="divider"></li>
                                    <li class="nav-header">Specials</li>
                                    <li><a href="class.do?id=6"><%= iConfig.namePrefix %>CLASS6NAME</a></li>
                                    <li><a href="class.do?id=7"><%= iConfig.namePrefix %>CLASS7NAME</a></li>
                                    <li><a href="class.do?id=8"><%= iConfig.namePrefix %>CLASS8NAME</a></li>
                                    <li><a href="class.do?id=9"><%= iConfig.namePrefix %>CLASS9NAME</a></li>
                                </ul>
                            </li>
                            <% } else { %>
                            	<li><a href="tutorial.jsp">Tutorials</a></li>
                            <% } %>
                        </ul>
                        <% if (session.getAttribute("loggedIn")!=null&&(Boolean) session.getAttribute("loggedIn")==true) {%>
                        <form class="navbar-form pull-right" action="logout.do" method="get">
                        	<input type="submit" value="Log out" class="btn"/>
                        </form>
                        <% } else { %>
                        <form class="navbar-form pull-right" action="login.do" method="get">
                        	<input type="submit" value="Log in" class="btn"/>
                        </form>
                       <% } %>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>