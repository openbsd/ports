# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:23 pascal Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.3.1-src
WANTLIB +=	z
QT5 =		Yes

REVISION =	2

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
