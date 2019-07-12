# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:26 sthen Exp $

COMMENT=	fake keyboard and mouse input

V =		3.20160805.1
DISTNAME =	xdotool-${V}
EPOCH=		0

SHARED_LIBS=	xdo 0.1	# 1.1

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE=	Yes

USE_GMAKE=	Yes

WANTLIB += X11 Xinerama Xtst c m xkbcommon

MASTER_SITES =	https://github.com/jordansissel/xdotool/releases/download/v${V}/

LIB_DEPENDS=	x11/xkbcommon

MAKE_FLAGS=	LIBVER=${LIBxdo_VERSION}

FAKE_FLAGS=	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

# The regression test suite has way too many dependencies, so leave
# it disabled for now
NO_TEST=	Yes

.include <bsd.port.mk>
