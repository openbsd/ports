# $OpenBSD: Makefile,v 1.6 2016/01/20 16:19:24 sthen Exp $

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

DANGEROUS = Yes

.include <bsd.port.subdir.mk>
