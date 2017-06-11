# $OpenBSD: Makefile,v 1.8 2017/06/11 20:32:19 landry Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.4.0-src
WANTLIB +=	z

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
