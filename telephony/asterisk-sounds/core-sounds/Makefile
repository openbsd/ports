# $OpenBSD: Makefile,v 1.2 2013/05/16 21:53:32 sthen Exp $

    SUBDIR =
.for i in gsm alaw ulaw g722 g729 wav # sln16 siren7 siren14
    SUBDIR += en,$i
    SUBDIR += en_AU,$i
    SUBDIR += es,$i
    SUBDIR += it,$i
    SUBDIR += fr,$i
    SUBDIR += ru,$i
.endfor

.include <bsd.port.subdir.mk>
