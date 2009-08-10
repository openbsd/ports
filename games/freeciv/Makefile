# $OpenBSD: Makefile,v 1.76 2009/08/10 06:31:42 kili Exp $

COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	2.1.4
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}p0
PKGNAME-client=	freeciv-client-${VERSION}p3
PKGNAME-share=	freeciv-share-${VERSION}p0
CATEGORIES=	games
HOMEPAGE=	http://www.freeciv.org/

MAINTAINER=	Rui Reis <rui@openbsd.org>

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

CONFIGURE_ARGS=	--with-ggz-client=no

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
MULTI_PACKAGES+=-client

CONFIGURE_ARGS+=--enable-client=gtk2 \
		--disable-sdl-mixer \
		--with-esd-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=--enable-client=no
.endif

PKG_ARCH-share=	*
LIB_DEPENDS-share=
WANTLIB-share=
RUN_DEPENDS-share=

WANTLIB-client=	${WANTLIB} \
		Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi Xinerama \
		Xrandr X11 Xext Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs xcb
LIB_DEPENDS-client=${LIB_DEPENDS} \
	gtk-x11-2.0.>=0.5,gdk-x11-2.0.>=0.5,gdk_pixbuf-2.0.>=0.5::x11/gtk+2
RUN_DEPENDS-client=	:desktop-file-utils-*:devel/desktop-file-utils \
			:freeciv-share-${VERSION}:${BUILD_PKGPATH},-share

RUN_DEPENDS-main=	:freeciv-share-${VERSION}:${BUILD_PKGPATH},-share

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

.include <bsd.port.mk>
