component extends="framework.one" {
	
	variables.framework = {
		// the name of the URL variable:
		action = 'action',
		// the URL variable to reload the controller/service cache:
		reload = 'reload',
		// the value of the reload variable that authorizes the reload:
		password = 'true',
		// debugging flag to force reload of cache on each request:
		reloadApplicationOnEveryRequest = true,
		// whether to force generation of SES URLs:
		generateSES = false,
		// whether to omit /index.cfm in SES URLs:
		SESOmitIndex = false,
		// debugging
		trace = true
	};
	
	function setupRequest() {
		// use setupRequest to do initialization per request
		request.context.startTime = getTickCount();
	}

}
