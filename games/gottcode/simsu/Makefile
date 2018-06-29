# $OpenBSD: Makefile,v 1.15 2018/06/29 22:16:13 espie Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.6-src
REVISION =	1

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
