# $OpenBSD: Makefile,v 1.21 2021/12/29 21:54:18 ajacoutot Exp $

COMMENT=	fake keyboard and mouse input

V =		3.20211022.1
DISTNAME =	xdotool-${V}
EPOCH=		0

SHARED_LIBS=	xdo 0.2

CATEGORIES=	x11

HOMEPAGE=	https://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE=	Yes

USE_GMAKE=	Yes

WANTLIB += X11 Xi Xinerama Xtst c m xkbcommon

MASTER_SITES =	https://github.com/jordansissel/xdotool/releases/download/v${V}/

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	x11/xkbcommon

MAKE_FLAGS=	VERLIBSUFFIX=so.${LIBxdo_VERSION} LIBNAMEFLAG=

FAKE_FLAGS=	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

# The regression test suite has way too many dependencies, so leave
# it disabled for now
NO_TEST=	Yes

.include <bsd.port.mk>
