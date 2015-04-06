# $OpenBSD: Makefile,v 1.3 2015/04/06 15:02:36 landry Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.3.1-src
WANTLIB +=	z
QT5 =	Yes

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
