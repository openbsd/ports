# $OpenBSD: Makefile,v 1.14 2016/03/16 16:46:33 naddy Exp $

COMMENT=	fake keyboard and mouse input

GH_TAGNAME=	v3.20150503.1
GH_PROJECT=	xdotool
GH_ACCOUNT=	jordansissel
EPOCH=		0

SHARED_LIBS=	xdo 0.1	# 1.1

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

WANTLIB += X11 Xinerama Xtst c m xkbcommon

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
