# $OpenBSD: Makefile,v 1.17 2014/10/31 15:12:05 landry Exp $

COMMENT=	earth as seen from the direction of the sun

DISTNAME=	xworld-2.0
REVISION=	2
CATEGORIES=	astro x11

MAINTAINER=	Vladimir Kotal <vlada@devnull.cz>

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=naddy/}

# BSD
PERMIT_PACKAGE_CDROM=   Yes

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
