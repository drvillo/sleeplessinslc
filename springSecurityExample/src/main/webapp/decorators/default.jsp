<!DOCTYPE html>
<%@ include file="/taglibs.jsp"%>
<html lang="en">
<head>
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><decorator:title /> | Flight Application</title>
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}
</style>

<link rel="stylesheet" type="text/css" media="all"
	href="<c:url value='/styles/lib/bootstrap.css'/>" />
<link rel="stylesheet" type="text/css" media="all"
	href="<c:url value='/styles/lib/bootstrap-responsive.css'/>" />

<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/styles/style.css'/>" />

<script type="text/javascript" src="<c:url value='/scripts/jquery.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/bootstrap-transition.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/bootstrap-alert.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/bootstrap-modal.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/bootstrap-datepicker.js'/>"></script>
<script>
      /* Update datepicker plugin so that MM/DD/YYYY format is used. */
      $.extend($.fn.datepicker.defaults, {
        parse: function (string) {
          var matches;
          if ((matches = string.match(/^(\d{2,2})\/(\d{2,2})\/(\d{4,4})$/))) {
            return new Date(matches[3], matches[1] - 1, matches[2]);
          } else {
            return null;
          }
        },
        format: function (date) {
          var
            month = (date.getMonth() + 1).toString(),
            dom = date.getDate().toString();
          if (month.length === 1) {
            month = "0" + month;
          }
          if (dom.length === 1) {
            dom = "0" + dom;
          }
          return month + "/" + dom + "/" + date.getFullYear();
        }
      });  
 </script>
<decorator:head />
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="brand" href="<c:url value='/'/>">Flight Application</a>
				<ul class="nav">
					<li><a href="/home.html" title="Home"><span>Home</span></a></li>
					<li><a href="/airports.html" title="Airports"><span>Airports</span></a></li>
					<li><a href="/searchFlights.html" title="Flights"><span>Flights</span></a></li>
					<li><a href="/reservations.html" title=""><span>Reservations</span></a></li>
				</ul>
				<p class="navbar-text pull-right">
					Welcome <sec:authentication property="principal"/>!&nbsp;
					<a href="<spring:url value="/j_spring_security_logout" htmlEscape="true" />">Logout</a>
				</p>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<%@ include file="/messages.jsp"%>
		<div class="row-fluid">
			<decorator:body />
		</div>
	</div>
	<div id="footer">Flight Application using Spring Security and Powered by Twitter
		Bootstrap</div>
</body>
</html>
