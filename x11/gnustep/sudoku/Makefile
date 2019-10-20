# $OpenBSD: Makefile,v 1.16 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT =	GNUstep sudoku generator

V =		0.7
REVISION =	13
DISTNAME =	Sudoku-$V
PKGNAME =	gnustep-sudoku-$V
CATEGORIES =	games

HOMEPAGE =	http://gap.nongnu.org/sudoku/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
