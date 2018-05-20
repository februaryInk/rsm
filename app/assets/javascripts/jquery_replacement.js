// Recreate some of jQuery's most useful functions so that we can use them
// without having to import jQuery.

var addClass = function ( collection, selector ) {
    var className = ' ' + selector + ' ';
    var newClassName;
    
    if ( !isIterable( collection ) ) {
        var iterable = [  ];
        iterable.push( collection );
        collection = iterable;
    }
    
    for ( var i = 0; i < collection.length; i++ ) {
        if ( ( ' ' + collection[ i ].className + ' ' ).indexOf( className ) < 0 ) {
            newClassName = collection[ i ].className.split( ' ' );
            newClassName.push( selector );
            newClassName = newClassName.join( ' ' );
            collection[ i ].className = newClassName;
        }
    }
}

var hasClass = function ( collection, selector ) {
    var className = ' ' + selector + ' ';
    
    if ( !isIterable( collection ) ) {
        var iterable = [  ];
        iterable.push( collection );
        collection = iterable;
    }
    
    for ( var i = 0; i < collection.length; i++ ) {
        if ( ( ' ' + collection[ i ].className + ' ' ).indexOf( className ) >= 0 ) {
            return true;
        }
    }

    return false;
}

// check if a given object can be iterated over.
var isIterable = function ( object ) {
    
    if ( object == null ) {
        return false;
    }
    
    return( typeof object[ Symbol.iterator ] === 'function' );
}

var removeClass = function ( collection, selector ) {
    var className = ' ' + selector + ' ';
    var newClassName;
    
    if ( !isIterable( collection ) ) {
        var iterable = [  ];
        iterable.push( collection );
        collection = iterable;
    }
    
    for ( var i = 0; i < collection.length; i++ ) {
        if ( ( ' ' + collection[ i ].className + ' ' ).indexOf( className ) >= 0 ) {
            newClassName = collection[ i ].className.split( ' ' );
            newClassName.splice( newClassName.indexOf( selector ), 1 );
            newClassName = newClassName.join( ' ' );
            collection[ i ].className = newClassName;
        }
    }
}
