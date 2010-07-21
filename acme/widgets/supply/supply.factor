! Copyright (C) 2010 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: formatting kernel ;
IN: acme.widgets.supply

: send-widget-order ( widget-count -- )
    "Sent an order for %d widgets.\n" printf ;
