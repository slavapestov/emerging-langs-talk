! Copyright (C) 2010 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: acme.widgets.supply combinators io kernel math namespaces ;
IN: acme.widgets.factory

SYMBOL: widgets

40 widgets set-global

: build-stuff ( -- )
    widgets [ 10 - ] change ;

: check-widget-supply ( -- )
    {
        { [ widgets get 20 < ] [ 20 send-widget-order ] }
        [ "Widgets are fully stocked" print ]
    } cond ;
