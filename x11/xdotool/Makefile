# $OpenBSD: Makefile,v 1.9 2011/09/23 07:24:04 dcoppa Exp $

COMMENT=	fake keyboard and mouse input

DISTNAME=	xdotool-2.20110530.1
EPOCH=		0

SHARED_ONLY=	Yes

SHARED_LIBS=	xdo 0.0	# 2.1

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
NO_REGRESS=	Yes

.include <bsd.port.mk>
