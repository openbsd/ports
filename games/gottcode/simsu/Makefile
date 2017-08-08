# $OpenBSD: Makefile,v 1.10 2017/08/08 15:15:52 bcallah Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.4-src

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
