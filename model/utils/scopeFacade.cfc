component
	accessors = true
	output = false
{
	property ScopeName;
	
	public ScopeFacade function init( variablename ScopeName ) {
		setScopeName( arguments.ScopeName );
		return this;
	} // init()

	public any function get( variablename key, string defaultValue) {
		local.scope = getScope();
		lock scope=getRootScope() timeout="5" throwontimeout="true" type="exclusive" {		
			if ( structKeyExists( arguments, "defaultValue" )
				AND NOT structKeyExists( local.scope,  arguments.key )){
				return arguments.defaultValue;
			} // if
			return local.scope[arguments.key];
		} // lock
	} // get()
	
	public void function set( variablename key, any value) {
		local.scope = getScope();
		lock scope = getRootScope() timeout="5" throwontimeout="true" type="exclusive" {
			local.scope[arguments.key] = arguments.value;
		} // lock
	} // set()
	
	public void function delete( variablename key) {
		var scope = getScope();
		lock scope = getRootScope() timeout="5" throwontimeout="true" type="exclusive" {
			if (exists(arguments.key)) {
				structDelete(scope,arguments.key);
			} // exists arguments.key
		} // lock
	} // delete()
	
	/* ------------------- OVERRIDE ACCESSORS --------------------- */
	public struct function getScope() {
		return structGet( getScopeName() );
	} // getScope()
	
	/* ------------------- PRIVATE FUNCTIONS --------------------- */
	private string function getRootScope() {
		return listFirst( getScopeName(), "." );
	} // getRootScope()
}