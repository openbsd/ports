# $OpenBSD: Makefile,v 1.4 2015/05/03 12:57:01 ajacoutot Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.3.1-src
WANTLIB +=	z
QT5 =		Yes

REVISION =	0

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
