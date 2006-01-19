# $OpenBSD: Makefile,v 1.54 2006/01/19 17:11:21 steven Exp $

COMMENT=	"Civilization clone for X11; multiplayer; game server"
COMMENT-client=	"Freeciv client"
COMMENT-share=	"shared data files for Freeciv"

VERSION=	2.0.7
DISTNAME=	freeciv-${VERSION}
PKGNAME=	freeciv-server-${VERSION}
PKGNAME-client=	freeciv-client-${VERSION}p0
PKGNAME-share=	freeciv-share-${VERSION}
CATEGORIES=	games
HOMEPAGE=	http://www.freeciv.org/

MAINTAINER=	Rui Reis <rui@rui.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/} \
		ftp://ftp.freeciv.org/pub/freeciv/stable/
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

MULTI_PACKAGES=	-share
SUBPACKAGE?=

BUILD_DEPENDS=	::lang/python/2.3

MODULES=	devel/gettext
WANTLIB=	c m z ncurses readline

.if !${FLAVOR:L:Mno_x11}
MULTI_PACKAGES+=-client

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.0.5,gdk-x11-2.0.0.5,gdk_pixbuf-2.0.0.5::x11/gtk+2 \
		esd.2::audio/esound 
CONFIGURE_ARGS=	--enable-client=gtk2 \
		--disable-sdl-mixer \
		--with-esd-prefix=${LOCALBASE}
WANTLIB-client=	X11 Xext Xft Xrender atk-1.0.0.0 fontconfig freetype audiofile \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 pango-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 pangoft2-1.0.0.0 audiofile
.else
CONFIGURE_ARGS=	--enable-client=no
.endif

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-share"
PKG_ARCH=	*
MODULES=
LIB_DEPENDS=
WANTLIB=
.  elif ${SUBPACKAGE} == "-client"
WANTLIB+=	${WANTLIB-client}
.  else
LIB_DEPENDS=
.  endif

.  if ${SUBPACKAGE} != "-share"
RUN_DEPENDS=	:freeciv-share-${VERSION}:games/freeciv,-share
.  endif
.endif

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
