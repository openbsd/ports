# $OpenBSD: Makefile,v 1.10 2013/03/11 11:46:17 espie Exp $

COMMENT=	fake keyboard and mouse input

DISTNAME=	xdotool-2.20110530.1
EPOCH=		0

SHARED_ONLY=	Yes

SHARED_LIBS=	xdo 0.0	# 2.1

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://semicomplete.googlecode.com/files/

USE_GMAKE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xinerama \
		Xtst c m pthread-stubs xcb

MAKE_FLAGS=	LIBVER=${LIBxdo_VERSION}

FAKE_FLAGS=	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

# The regression test suite has way too many dependencies, so leave
# it disabled for now
NO_TEST=	Yes

.include <bsd.port.mk>
