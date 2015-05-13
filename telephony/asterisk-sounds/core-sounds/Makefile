# $OpenBSD: Makefile,v 1.5 2015/05/13 09:40:20 sthen Exp $

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
    SUBDIR += sv,$i
.endfor

.include <bsd.port.subdir.mk>
