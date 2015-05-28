# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:23 pascal Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.1-src
QT5=Yes
REVISION =	0

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
