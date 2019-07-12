# $OpenBSD: Makefile,v 1.20 2019/07/12 21:02:12 sthen Exp $

COMMENT=	earth as seen from the direction of the sun

DISTNAME=	xworld-2.0
REVISION=	4
CATEGORIES=	astro x11

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=naddy/}

# BSD
PERMIT_PACKAGE=	Yes

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
