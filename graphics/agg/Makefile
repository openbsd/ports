# $OpenBSD: Makefile,v 1.5 2007/10/23 09:22:13 aanriot Exp $

COMMENT=	anti-grain geometry graphics library

DISTNAME=	agg-2.4
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	agg		2.5 \
		aggfontfreetype	2.5 \
		aggplatformsdl	2.5 \
		aggplatformX11	2.5
CATEGORIES=	graphics

HOMEPAGE=	http://www.antigrain.com/

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# BSD-like - adding gpc changes this
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	iconv freetype m usbhid X11 Xau Xdmcp Xext Xrandr Xrender z

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9

LIB_DEPENDS=	SDL.>=6::devel/sdl
BUILD_DEPENDS=	:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
		::devel/metaauto

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=automake

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gpc \
		--disable-examples \
		--disable-sdltest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${SH} autogen.sh

.include <bsd.port.mk>
