# $OpenBSD: Makefile,v 1.13 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep sudoku generator

V =		0.7
REVISION =	10
DISTNAME =	Sudoku-$V
PKGNAME =	gnustep-sudoku-$V
CATEGORIES =	games

HOMEPAGE =	http://gap.nongnu.org/sudoku/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
