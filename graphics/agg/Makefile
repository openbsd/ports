# $OpenBSD: Makefile,v 1.24 2016/09/13 15:29:01 naddy Exp $

COMMENT=	anti-grain geometry graphics library

DISTNAME=	agg-2.5
REVISION=	5
SHARED_LIBS=	agg		3.0 \
		aggfontfreetype	3.0 \
		aggplatformsdl	3.0 \
		aggplatformX11	3.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.antigrain.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 freetype iconv m sndio usbhid xcb z SDL>=6 stdc++ pthread

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9

LIB_DEPENDS=	converters/libiconv \
		devel/sdl
# XX needs libtoolize
BUILD_DEPENDS=	devel/autoconf/${AUTOCONF_VERSION} \
		devel/libtool \
		devel/metaauto

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=automake

CONFIGURE_ARGS=	--disable-gpc \
		--disable-examples \
		--disable-sdltest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	@cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} /bin/sh autogen.sh

.include <bsd.port.mk>
