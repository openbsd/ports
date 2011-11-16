# $OpenBSD: Makefile,v 1.8 2011/11/16 00:20:09 sthen Exp $

COMMENT = 	network traffic monitor

DISTNAME = 	vnstat-1.10
CATEGORIES = 	net sysutils

REVISION = 	5

HOMEPAGE = 	http://humdi.net/vnstat/

MASTER_SITES = ${HOMEPAGE}

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP = 	Yes

WANTLIB = 	c m gd

LIB_DEPENDS = 	graphics/gd

USE_GMAKE = 	Yes

NO_REGRESS = 	Yes

INSTALL_TARGET = bsdinstall

LDFLAGS += 	-L${LOCALBASE}/lib -L/usr/X11R6/lib
MAKE_FLAGS = 	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
