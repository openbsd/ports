# $OpenBSD: Makefile,v 1.64 2007/01/04 20:19:53 steven Exp $

COMMENT-main=	"Civilization clone for X11; multiplayer; game server"
COMMENT-client=	"Freeciv client"
COMMENT-share=	"shared data files for Freeciv"

VERSION=	2.0.8
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}p1
PKGNAME-client=	freeciv-client-${VERSION}p1
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

MULTI_PACKAGES=	-main -share

MODULES=	devel/gettext
WANTLIB=	c m z ncurses readline

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
MULTI_PACKAGES+=-client

CONFIGURE_ARGS=	--enable-client=gtk2 \
		--disable-sdl-mixer \
		--with-esd-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS=	--enable-client=no
.endif

PKG_ARCH-share=	*
LIB_DEPENDS-share=
WANTLIB-share=
RUN_DEPENDS-share=

WANTLIB-client=	${WANTLIB} \
		X11 Xext Xrender atk-1.0 fontconfig freetype audiofile \
		glib-2.0 gmodule-2.0 gobject-2.0 glitz png pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 audiofile cairo
LIB_DEPENDS-client=${LIB_DEPENDS} \
	gtk-x11-2.0.>=0.5,gdk-x11-2.0.>=0.5,gdk_pixbuf-2.0.>=0.5::x11/gtk+2 \
	esd.>=2::audio/esound 
RUN_DEPENDS-client=	:freeciv-share-${VERSION}:${BUILD_PKGPATH},-share

RUN_DEPENDS-main=	:freeciv-share-${VERSION}:${BUILD_PKGPATH},-share

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
