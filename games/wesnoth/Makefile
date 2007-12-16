# $OpenBSD: Makefile,v 1.18 2007/12/16 00:09:34 jasper Exp $

COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.2.8
CATEGORIES=	games x11

HOMEPAGE=	http://www.wesnoth.org/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org> 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c freetype m pthread stdc++ z

USE_LIBTOOL=	Yes
LIB_DEPENDS=	SDL::devel/sdl \
		SDL_image::devel/sdl-image \
		SDL_net::devel/sdl-net \
		SDL_mixer::devel/sdl-mixer \
		fribidi::devel/fribidi
# png is only required for the tools, which we don't build yet.

# The detection of kde-config/gnome-config will only lead to some
# desktop file installation...

MODULES=	devel/gettext

USE_X11=	Yes

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

CONFIGURE_STYLE=gnu

CONFIGURE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS+=--enable-server \
		--enable-campaign-server \
		--enable-editor \
		--with-fifodir=/var/run

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"

.include <bsd.port.mk>
