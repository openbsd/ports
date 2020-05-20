# $OpenBSD: Makefile,v 1.19 2020/05/20 14:03:40 bcallah Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.9-src

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
