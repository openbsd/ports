# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:23 sthen Exp $

COMMENT =	Sudoku generator and solver
DISTNAME =	qqwing-1.3.4
SHARED_LIBS +=  qqwing                    0.0 # 3.0
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	https://qqwing.com/
MAINTAINER =	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://qqwing.com/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
