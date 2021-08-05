# $OpenBSD: Makefile,v 1.20 2021/08/05 11:26:20 sthen Exp $

COMMENT=	fake keyboard and mouse input

V =		3.20210804.2
DISTNAME =	xdotool-${V}
EPOCH=		0

SHARED_LIBS=	xdo 0.2

CATEGORIES=	x11

HOMEPAGE=	https://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE=	Yes

USE_GMAKE=	Yes

WANTLIB += X11 Xinerama Xtst c m xkbcommon

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
