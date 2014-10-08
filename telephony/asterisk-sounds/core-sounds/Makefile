# $OpenBSD: Makefile,v 1.4 2014/10/08 11:20:05 sthen Exp $

    SUBDIR =
.for i in gsm alaw ulaw g722 g729 wav # sln16 siren7 siren14
    SUBDIR += en,$i
    SUBDIR += en_AU,$i
    SUBDIR += en_GB,$i
    SUBDIR += es,$i
    SUBDIR += fr,$i
    SUBDIR += it,$i
    SUBDIR += ja,$i
    SUBDIR += ru,$i
.endfor

.include <bsd.port.subdir.mk>
