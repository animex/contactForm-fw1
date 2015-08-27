<cfoutput>
<div class="page-header" style="margin-top:100px;">
    <h1>Contact Us!</h1>
</div>
<form id="ContactForm" action="#buildUrl('contact.save')#" method="post" data-parsley-validate>
    <div class="row">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="#rc.contact.getName()#" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="#rc.contact.getEmail()#" class="form-control" required data-parsley-type="email" />
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" value="#rc.contact.getSubject()#" class="form-control" required />
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" class="form-control" required data-parsley-minlength="50">#rc.contact.getMessage()#</textarea>
        </div>
    </div>
    <div class="row">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>
</cfoutput>