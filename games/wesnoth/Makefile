# $OpenBSD: Makefile,v 1.26 2009/04/09 17:43:36 jasper Exp $

COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.4.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

HOMEPAGE=	http://www.wesnoth.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c freetype m pthread stdc++ z

MODULES=	devel/gettext

LIB_DEPENDS=	boost_iostreams-mt::devel/boost \
		SDL::devel/sdl \
		SDL_image::devel/sdl-image \
		SDL_net::devel/sdl-net \
		SDL_mixer::devel/sdl-mixer \
		fribidi::devel/fribidi
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu

CONFIGURE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib

# XXX: Provide the tools
CONFIGURE_ARGS+=--enable-server \
		--enable-campaign-server \
		--enable-editor \
		--with-fifodir=/var/run \
		--enable-desktop-entry \
		--with-desktop-dir=${PREFIX}/share/applications \
		--with-icondir=${PREFIX}/share/pixmaps

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"

USE_X11=	Yes
USE_LIBTOOL=	Yes

FLAVORS=	lite tinygui
FLAVOR?=

.if ${FLAVOR:L:Mlite}
CONFIGURE_ARGS+=--enable-lite
.endif

.if ${FLAVOR:L:Mtinygui}
BUILD_DEPENDS+=	::graphics/pngmeta \
		:ImageMagick-*:graphics/ImageMagick
CONFIGURE_ARGS+=--enable-tinygui
.endif

.include <bsd.port.mk>
