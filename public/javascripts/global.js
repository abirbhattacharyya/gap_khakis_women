

window.onload = function()
{
    // initialization
    // ...
}


/* common functionality */


function showHide( id )
{
    var e = document.getElementById( id );
    if( e ) {
        state = ( getStyle( e, 'display' ) == 'none' ) ? 'block' : 'none';
        showHideHelper( e, state );
    }
}


function showHideAll()
{
    var state = null;
    var divs = document.getElementsByTagName( 'div' );
    for( i = 0; i < divs.length; i++ ) {
        if( divs[i].className != 'show-hide' ) continue;
        if( !state ) state = ( getStyle( divs[i], 'display' ) == 'none' ) ? 'block' : 'none';
        showHideHelper( divs[i], state );
    }
}


function showHideHelper( e, state )
{
    setStyle( e, 'display', state );
    if( state == 'block' ) {
        setCookie( 'showHide_' + e.id, state );
    } else {
//        setCookie( 'showHide_' + e.id, state );
        delCookie( 'showHide_' + e.id );
    }
}


function setStyle( e, name, value )
{
    e.style[name] = value;
}


function getStyle( e, name )
{
    return e.style[name];
}


/* Cookies ================================================================== */


function setCookie( name, value, days )
{
    if( !days ) days = 7;

    var date = new Date();
    date.setTime( date.getTime() + ( days * 24 * 60 * 60 * 1000 ) );
    var expires = "; expires=" + date.toGMTString();

    document.cookie = name + "=" + value + expires + "; path=/";
}


function getCookie( cookieName )
{
    var cookieString = document.cookie;
    var startLoc = cookieString.indexOf( cookieName );
    if( startLoc == -1 ) return null;
    var sepLoc = cookieString.indexOf( "=", startLoc );
    var endLoc = cookieString.indexOf( ";", startLoc );
    if( endLoc == -1 ) endLoc = cookieString.length;
    return( cookieString.substring( sepLoc+1, endLoc ) );
}

function delCookie( name )
{
    var date = new Date();
    document.cookie = name + "=1;expires=" + date.toGMTString() + ";" + ";";
}

function getCookies()
{
    var cookies = {};
    var nameValueList = document.cookie.split(';');
    var item = 0;
    for( item = 0; item < nameValueList.length; item++ )
    {
        var nameValue = nameValueList[item].split('=');
        cookies[ nameValue[0] ] = nameValue[1];
    }
    return cookies;
}


