/*
 * TODO: Add a button to expand all, and a button to collapse all expandables.
 * TODO: Make expandables open initially, then close them with JavaScript on page load,
 * so non-JavaScript users can see them.
 */

// detect the open link and style it a certain way.
function openLink ( path ) {
    var openLink = document.querySelectorAll( 'a[ href="' + path + '" ].js-openable-link' ).length ?
        document.querySelectorAll( 'a[ href="' + path + '" ].js-openable-link' ).length :
        document.querySelectorAll( '.js-openable-links a[ href="' + path + '" ]' );
    addClass( openLink, '-open' );
}

function readyExpandables (  ) {
    var expandables = document.getElementsByClassName( 'js-expandable' );

    for ( var i = 0; i < expandables.length; i++ ) {
        expandables[ i ].onmouseover = function ( evt ) {
            addClass( this, '-hover' );
        }

        expandables[ i ].onmouseout = function ( evt ) {
            removeClass( this, '-hover' );
        }

        expandables[ i ].onclick = function ( evt ) {
            if ( hasClass( this, '-open' ) ) {
                removeClass( this, '-open' );
            } else {
                addClass( this, '-open' );
                this.getElementsByClassName( 'js-expandable-hidden' )[ 0 ].style.height = this.getElementsByClassName( 'js-expandable-hidden' )[ 0 ].scrollHeight;
            }
        }
    }
}

function readyHeader (  ) {
    var path = window.location.pathname;

    openLink( path );

    var navToggles = document.getElementsByClassName( 'js-nav-toggle' );

    for ( var i = 0; i < navToggles.length; i++ ) {
        navToggles[ i ].onclick = function ( evt ) {

            var target = this.dataset.target;

            if ( hasClass( this, '-open' ) ) {
                removeClass( this, '-open' );
                removeClass( document.getElementById( target ), '-open' )
            } else {
                addClass( this, '-open' );
                addClass( document.getElementById( target ), '-open' );
                document.getElementById( target ).style.height = document.getElementById( target ).scrollHeight;
            }
        }
    }
}
