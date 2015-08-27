<cfoutput>
<div class="page-header">
    <h2>Results</h2>
</div>
<div class="row">
    <div class="form-group">
        <label for="name">Name:</label>
        <span id="name">#rc.contact.getName()#</span>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <span id="name">#rc.contact.getEmail()#</span>

    </div>
</div>
<div class="row">
    <div class="form-group">
        <label for="subject">Subject:</label>
        <span id="name">#rc.contact.getSubject()#</span>

    </div>
</div>
<div class="row">
    <div class="form-group">
        <label for="message">Message:</label>
        <span id="name">#rc.contact.getMessage()#</span>
    </div>
</div>
</cfoutput>