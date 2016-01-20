# $OpenBSD: Makefile,v 1.4 2016/01/20 16:19:25 sthen Exp $

    SUBDIR =
.for i in gsm alaw ulaw g722 g729 wav # sln16 siren7 siren14
    SUBDIR += en,$i
    SUBDIR += en_GB,$i
    SUBDIR += fr,$i
.endfor

DANGEROUS = Yes

.include <bsd.port.subdir.mk>
