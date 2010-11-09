# $OpenBSD: Makefile,v 1.13 2010/11/09 09:14:31 espie Exp $

COMMENT=	anti-grain geometry graphics library

DISTNAME=	agg-2.5
REVISION=	2
SHARED_LIBS=	agg		3.0 \
		aggfontfreetype	3.0 \
		aggplatformsdl	3.0 \
		aggplatformX11	3.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.antigrain.com/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender freetype m pthread-stubs \
		sndio usbhid xcb z SDL.>=6

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9

MODULES=	converters/libiconv
LIB_DEPENDS=	::devel/sdl
# XX needs libtoolize
BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
		::devel/libtool \
		::devel/metaauto

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=automake

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gpc \
		--disable-examples \
		--disable-sdltest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	@cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${SH} autogen.sh

.include <bsd.port.mk>
