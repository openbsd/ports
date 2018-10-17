# $OpenBSD: Makefile,v 1.2 2018/10/17 06:51:10 bentley Exp $

COMMENT =	Helsinki finite state transducer

V =		3.15.0
DISTNAME =	hfst-$V

SHARED_LIBS +=  hfst                      1.0 # 50.0

CATEGORIES =	textproc

HOMEPAGE =	https://hfst.github.io/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MASTER_SITES =		https://github.com/hfst/hfst/releases/download/v$V/

# C++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
