# $OpenBSD: Makefile,v 1.33 2010/10/12 21:26:18 jasper Exp $

COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.8.5

CATEGORIES=	games x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://www.wesnoth.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xrender c cairo expat fontconfig freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 m pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb z boost_iostreams-mt
WANTLIB += gthread-2.0 xcb-render xcb-render-util
WANTLIB += boost_regex-mt SDL SDL_image SDL_net SDL_ttf fribidi
WANTLIB += pango-1.0 pangoft2-1.0 pangocairo-1.0 lua dbus-1
WANTLIB += SDL_mixer

MODULES=	devel/gettext

LIB_DEPENDS=	::devel/boost \
		::devel/sdl \
		::devel/sdl-image \
		::devel/sdl-net \
		::devel/sdl-mixer \
		::devel/sdl-ttf \
		::devel/fribidi \
		::devel/pango \
		::lang/lua \
		::x11/dbus

RUN_DEPENDS=	::devel/desktop-file-utils \
		::textproc/libxslt

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE=	gnu
AUTOMAKE_VERSION=	1.9
AUTOCONF_VERSION=	2.60

CONFIGURE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib

# XXX: Provide the tools
CONFIGURE_ARGS+=--enable-server \
		--enable-campaign-server \
		--enable-editor \
		--with-fifodir=/var/run \
		--enable-desktop-entry \
		--with-desktopdir=${PREFIX}/share/applications \
		--with-icondir=${PREFIX}/share/pixmaps

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"

USE_X11=	Yes
USE_LIBTOOL=	Yes

FLAVORS=	lite tinygui
FLAVOR?=

.if ${FLAVOR:L:Mlite}
CONFIGURE_ARGS+=--enable-lowmem
.endif

.if ${FLAVOR:L:Mtinygui}
BUILD_DEPENDS+=	::graphics/pngmeta \
		:ImageMagick-*:graphics/ImageMagick
CONFIGURE_ARGS+=--enable-tinygui
.endif

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
