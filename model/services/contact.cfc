component
    accessors=true
{
    property scopeFacade;
    property beanFactory;
    property storagekey;

    function init( scopeFacade, beanFactory ) {

        setScopeFacade( arguments.scopeFacade );
        setBeanFactory( arguments.beanFactory );
        setStorageKey( 'session' );

        return this;
    }

    function get( variablename key ) {
        if ( len( arguments.key )) {
            local.result = getScopeFacade().init( 'session' ).get( arguments.key );
        } else {
            local.result = getBeanFactory().getBean( 'ContactBean' );
        }
        return local.result;
    }

    function save( variablename key, any Data ) {
        getScopeFacade().init( 'session' ).set( arguments.key, arguments.data );
    }

    function delete( variablename key ) {
        getScopeFacade( 'session' ).delete( arguments.key );
    }
}