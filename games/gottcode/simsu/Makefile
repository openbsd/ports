# $OpenBSD: Makefile,v 1.4 2015/04/06 15:01:36 landry Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.1-src
QT5=Yes

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
