# $OpenBSD: Makefile,v 1.7 2016/12/25 14:34:39 zhuk Exp $

GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.3.1-src
WANTLIB +=	z
QT5 =		Yes

REVISION =	3

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
