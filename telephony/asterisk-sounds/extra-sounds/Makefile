# $OpenBSD: Makefile,v 1.1 2012/09/25 21:58:46 sthen Exp $

    SUBDIR =
.for i in gsm alaw ulaw sln16 wav # g722 g729 siren7 siren14
    SUBDIR += en,$i
    SUBDIR += fr,$i
.endfor

.include <bsd.port.subdir.mk>
