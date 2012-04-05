# $OpenBSD: Makefile,v 1.11 2012/04/05 19:58:09 jasper Exp $

COMMENT = 	network traffic monitor

DISTNAME = 	vnstat-1.11
REVISION =	0
CATEGORIES = 	net sysutils

HOMEPAGE = 	http://humdi.net/vnstat/

MASTER_SITES = ${HOMEPAGE}

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP = 	Yes

WANTLIB = 	c gd m

LIB_DEPENDS = 	graphics/gd

USE_GMAKE = 	Yes

NO_REGRESS = 	Yes

INSTALL_TARGET = bsdinstall

MAKE_FLAGS = 	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
