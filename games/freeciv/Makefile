# $OpenBSD: Makefile,v 1.41 2004/11/29 16:20:10 espie Exp $

COMMENT=	"Civilization clone for X11; multiplayer; game server"
COMMENT-client=	"Freeciv client"
COMMENT-share=	"shared data files for Freeciv"

VERSION=	1.14.1
DISTNAME=	freeciv-${VERSION}
PKGNAME=	freeciv-server-${VERSION}
PKGNAME-client=	freeciv-client-${VERSION}
PKGNAME-share=	freeciv-share-${VERSION}
CATEGORIES=	games
HOMEPAGE=	http://www.freeciv.org/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable/
EXTRACT_SUFX=	.tar.bz2

FLAVORS=	gtk2 esd sdl
PSEUDO_FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11} && ${FLAVOR:L} != "no_x11"
ERRORS+=	"Fatal: FLAVOR 'no_x11' and the other FLAVORS are mutually exclusive."
.endif

MULTI_PACKAGES=	-share
SUBPACKAGE?=

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-share"
# -client and -server
MODULES=	devel/gettext
WANTLIB=	c m ncurses readline z

.  if !${FLAVOR:L:Mno_x11}
# -client
USE_X11=	Yes
MULTI_PACKAGES+=-client

.    if ${FLAVOR:L:Msdl}
LIB_DEPENDS+=	SDL_mixer::devel/sdl-mixer
CONFIGURE_ARGS+=--with-sdl-prefix=${LOCALBASE}
WANTLIB+=	ICE SDL SM X11 Xaw Xext Xmu Xpm Xt pthread usbhid
.    else
CONFIGURE_ARGS+=--disable-sdl-mixer
.    endif

.    if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
CONFIGURE_ARGS+=--with-esd-prefix=${LOCALBASE}
WANTLIB+=	audiofile
.    else
CONFIGURE_ARGS+=--disable-esd
.    endif

.    if ${FLAVOR:L:Mgtk2}
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	gtk-x11-2.0.0.5,gdk-x11-2.0.0.5,gdk_pixbuf-2.0.0.5::x11/gtk+2
CONFIGURE_ARGS+=--enable-client=gtk2
WANTLIB+=	X11 Xext Xft Xinerama Xrender atk-1.0.0.0 fontconfig \
		freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0
.    else
CONFIGURE_ARGS+=--enable-client=xaw
WANTLIB+=	ICE SM X11 Xaw Xext Xmu Xpm Xt
.    endif

.  else
CONFIGURE_ARGS+=--enable-client=no
.  endif

.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-share"
PKG_ARCH=		*
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} != "-share"
RUN_DEPENDS+=	:freeciv-share-${VERSION}:games/freeciv,-share
.endif

FULLPKGNAME=		${PKGNAME}
FULLPKGNAME-share=	${PKGNAME-share}

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
