! Copyright (C) 2010 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: formatting kernel ;
IN: error-demo-1

SYMBOLS: ground-shipping express-shipping ;

: send-widget-order ( widget-count shipping-method -- )
    "Sent an order for %d widgets using %s.\n" printf ;
