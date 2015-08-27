<cfset session.contactData = structNew()>
<cfset ContactStorage = new model.utils.ScopeFacade().init('session.contactData') >

<cfdump var="#ContactStorage.getScopeName()#">

<cfset ContactStorage.set( 'name', 'Ben' )>
<cfset ContactStorage.set( 'email', 'Ben@ben.com' )>
<cfset ContactStorage.set( 'subject', 'Test' )>
<cfset ContactStorage.set( 'Message', 'This is a test.' )>
<cfset ContactStorage.set( 'Message2', 'This is a test.' )>
<cfset ContactStorage.delete( 'Message2' )>

<cfdump var="#session#">

<cfdump var="#ContactStorage.get( 'name' )#">

<cfdump var="#ContactStorage.getScope()#">

<cfdump var="#ContactStorage#">
