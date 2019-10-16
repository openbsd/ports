# $OpenBSD: Makefile,v 1.15 2019/10/16 13:45:06 ajacoutot Exp $

COMMENT =	GNUstep sudoku generator

V =		0.7
REVISION =	12
DISTNAME =	Sudoku-$V
PKGNAME =	gnustep-sudoku-$V
CATEGORIES =	games

HOMEPAGE =	http://gap.nongnu.org/sudoku/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
