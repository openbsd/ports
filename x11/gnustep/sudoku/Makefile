# $OpenBSD: Makefile,v 1.14 2018/11/26 14:17:13 sebastia Exp $

COMMENT =	GNUstep sudoku generator

V =		0.7
REVISION =	11
DISTNAME =	Sudoku-$V
PKGNAME =	gnustep-sudoku-$V
CATEGORIES =	games

HOMEPAGE =	http://gap.nongnu.org/sudoku/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
