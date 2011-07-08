# $OpenBSD: Makefile,v 1.39 2011/07/08 19:14:59 jasper Exp $

COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.8.6

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

WANTLIB += SDL SDL_image SDL_mixer SDL_net SDL_ttf X11 boost_iostreams-mt
WANTLIB += boost_regex-mt c cairo dbus-1 expat fontconfig freetype
WANTLIB += fribidi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += lua m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += stdc++ z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/boost \
		devel/sdl \
		devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/fribidi \
		devel/pango \
		lang/lua \
		x11/dbus

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/libxslt

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE=	gnu
AUTOMAKE_VERSION=	1.9
AUTOCONF_VERSION=	2.60

CONFIGURE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS+=--enable-server \
		--enable-campaign-server \
		--enable-editor \
		--with-fifodir=/var/run \
		--enable-desktop-entry \
		--with-desktopdir=${PREFIX}/share/applications \
		--with-icondir=${PREFIX}/share/pixmaps

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

FLAVORS=	lite tinygui
FLAVOR?=

.if ${FLAVOR:L:Mlite}
CONFIGURE_ARGS+=--enable-lowmem
.endif

.if ${FLAVOR:L:Mtinygui}
BUILD_DEPENDS+=graphics/ImageMagick
CONFIGURE_ARGS+=--enable-tinygui
.endif

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
