<cfoutput>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<!--- title set by a view - there is no default --->
		<title>FW/1 Demo App</title>
	    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href='/assets/css/bootstrap-theme.min.css'>
	    <link rel="stylesheet" href="/assets/css/main.css">
	</head>
  <body role="document">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="##navbar" aria-expanded="false" aria-controls="navbar">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="/##">FW/1 Demo</a>
		    </div>
		    <div id="navbar" class="navbar-collapse collapse">
		      <ul class="nav navbar-nav">
		        <li><a href="#buildURL('contact')#">Contact</a></li>
		      </ul>
		    </div><!--/.nav-collapse -->
		  </div>
		</nav>
    <div class="container theme-showcase" role="main">
			#body#	<!--- body is result of views --->
		</div>
		<div class="footer">
			<p style="font-size: small;">
				Powered by FW/1 version <cfoutput>#variables.framework.version#</cfoutput>.<br />
				This request took <cfoutput>#getTickCount() - rc.startTime#</cfoutput>ms.
			</p>
		</div>
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	    <script src="/assets/js/bootstrap.min.js"></script>
	    <script src="/assets/js/parsley.min.js"></script>
		<script>
		!(function($){
		  $('##ContactForm').parsley();
		})(jQuery);
		</script>
	</body>
</html>
</cfoutput>