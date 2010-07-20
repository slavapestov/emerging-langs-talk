! Copyright (C) 2010 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: error-demo-1 combinators io kernel math namespaces ;
IN: error-demo-2

SYMBOL: widgets

40 widgets set-global

: build-stuff ( -- )
    widgets [ 10 - ] change ;

: check-widget-supply ( -- )
    {
        { [ widgets get 20 < ] [ 20 send-widget-order ] }
        [ "Widgets are fully stocked" print ]
    } cond ;
