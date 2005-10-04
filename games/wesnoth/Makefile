# $OpenBSD: Makefile,v 1.4 2005/10/04 19:24:16 robert Exp $

COMMENT=	"strategy game with fantasy theme"
DISTNAME=	wesnoth-1.0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}

HOMEPAGE=	http://www.wesnoth.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 freetype stdc++ pthread m usbhid c Xext z

USE_LIBTOOL=	Yes
LIB_DEPENDS=	SDL::devel/sdl \
		SDL_image::devel/sdl-image \
		SDL_net::devel/sdl-net \
		SDL_mixer::devel/sdl-mixer \
		zipios::archivers/zipios


# The detection of kde-config/gnome-config will only lead to some
# desktop file installation...
# png is only required for the tools, which we don't build yet.

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
FLAVORS=	lite
FLAVOR?=

.if ${FLAVOR:L:Mlite}
CONFIGURE_ARGS+=--enable-lite
.endif

CONFIGURE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS+=--enable-server --enable-campaign-server --enable-editor \
		--with-fifodir=/var/run

MAKE_FLAGS=LIBINTL='-L${LOCALBASE}/lib -lintl -liconv'

.include <bsd.port.mk>
