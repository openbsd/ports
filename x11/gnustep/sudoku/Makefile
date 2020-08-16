# $OpenBSD: Makefile,v 1.17 2020/08/16 20:35:21 sebastia Exp $

COMMENT =	GNUstep sudoku generator

V =		0.7
REVISION =	14
DISTNAME =	Sudoku-$V
PKGNAME =	gnustep-sudoku-$V
CATEGORIES =	games

HOMEPAGE =	http://gap.nongnu.org/sudoku/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
