# $OpenBSD: Makefile,v 1.15 2013/09/24 15:55:35 naddy Exp $

COMMENT=	earth as seen from the direction of the sun

DISTNAME=	xworld-2.0
CATEGORIES=	astro x11

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=naddy/}

# BSD
PERMIT_PACKAGE_CDROM=   Yes

REVISION =	1
WANTLIB=	X11 c m


CONFIGURE_STYLE= simple
CONFIGURE_ENV=	CAT=cat \
		STRIP=strip \
		INCLUDES="-I${X11BASE}/include" \
		LDLIBS="-lm -L${X11BASE}/lib -lX11" \
		MORELIBS=""
INSTALL_STRIP=	# don't strip out image data on install
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xworld ${PREFIX}/bin

.include <bsd.port.mk>
