# $OpenBSD: Makefile,v 1.7 2016/12/25 14:34:39 zhuk Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.2-src
REVISION =	0

QT5 = 		Yes

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
