# $OpenBSD: Makefile,v 1.1.1.1 2017/12/17 16:58:14 bcallah Exp $

COMMENT =	Sudoku generator and solver
DISTNAME =	qqwing-1.3.4
SHARED_LIBS +=  qqwing                    0.0 # 3.0

CATEGORIES =	games

HOMEPAGE =	https://qqwing.com/
MAINTAINER =	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MASTER_SITES =	https://qqwing.com/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
