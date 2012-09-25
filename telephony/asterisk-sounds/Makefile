# $OpenBSD: Makefile,v 1.9 2012/09/25 21:58:46 sthen Exp $

    SUBDIR =
    SUBDIR += core-sounds
    SUBDIR += extra-sounds
.for i in gsm alaw ulaw g722 sln16 wav # g729 siren7 siren14
    SUBDIR += moh-opsound,$i
.endfor

.include <bsd.port.subdir.mk>
