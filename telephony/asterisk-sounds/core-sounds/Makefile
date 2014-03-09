# $OpenBSD: Makefile,v 1.3 2014/03/09 20:51:26 sthen Exp $

    SUBDIR =
.for i in gsm alaw ulaw g722 g729 wav # sln16 siren7 siren14
    SUBDIR += en,$i
    SUBDIR += en_AU,$i
    SUBDIR += en_GB,$i
    SUBDIR += es,$i
    SUBDIR += it,$i
    SUBDIR += fr,$i
    SUBDIR += ru,$i
.endfor

.include <bsd.port.subdir.mk>
