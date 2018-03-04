# $OpenBSD: Makefile,v 1.16 2018/03/04 12:10:32 rsadowski Exp $

COMMENT=	fake keyboard and mouse input

V =		3.20150503.1
DISTNAME =	xdotool-${V}
REVISION =	2
EPOCH=		0

SHARED_LIBS=	xdo 0.1	# 1.1

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

WANTLIB += X11 Xinerama Xtst c m xkbcommon

MASTER_SITES =	https://github.com/jordansissel/xdotool/releases/download/v${V}/

DISTFILES =	${DISTNAME}_1{${DISTNAME}}${EXTRACT_SUFX}

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
