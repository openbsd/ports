# $OpenBSD: Makefile,v 1.1.1.1 2006/10/16 11:42:04 steven Exp $

COMMENT=	"anti-grain geometry graphics library"

DISTNAME=	agg-2.4
SHARED_LIBS=	agg		2.4 \
		aggfontfreetype	2.4 \
		aggplatformsdl	2.4 \
		aggplatformX11	2.4
CATEGORIES=	graphics

HOMEPAGE=	http://www.antigrain.com/

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# BSD-like - adding gpc changes this
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xext freetype m usbhid

MASTER_SITES=	${HOMEPAGE}

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9

LIB_DEPENDS=	SDL.>=6::devel/sdl
BUILD_DEPENDS=	::devel/autoconf/${AUTOCONF_VERSION} \
		::devel/automake/${AUTOMAKE_VERSION} \
		::devel/metaauto \
		::devel/pkgconfig

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gpc \
		--disable-examples \
		--disable-sdltest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I/usr/X11R6/include" \
		LDFLAGS="-L${LOCALBASE}/lib -I/usr/X11R6/lib"

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${SH} autogen.sh

.include <bsd.port.mk>
