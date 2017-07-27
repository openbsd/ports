# $OpenBSD: Makefile,v 1.9 2017/07/27 09:55:44 sthen Exp $

GAME =		simsu
COMMENT =	basic sudoku game
DISTNAME =	${GAME}-1.3.3-src
WANTLIB += ${COMPILER_LIBCXX}
REVISION =	0

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
