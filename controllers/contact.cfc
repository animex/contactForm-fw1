component accessors="true" {

    property fw;
    property contactService;
    property beanFactory;

    public function init( fw, contactService, beanFactory ){

        setFW( arguments.fw );
        setContactService ( arguments.contactService );
        setBeanFactory( arguments.BeanFactory );

        return this;
    }

    function default( rc ) {
        rc.contact = getContactService().get( argumentcollection = rc );
    }

    function save( rc ) {
        var contact = getContactService().get( argumentcollection = rc );
        variables.fw.populate( cfc = contact, trim = true );

        getContactService().save( 'contactFormData', contact );

        variables.fw.redirect( 'contact.result' );
    }

    function result( rc ) {
        rc.contact = getContactService().get( 'contactFormData' );
    }
}