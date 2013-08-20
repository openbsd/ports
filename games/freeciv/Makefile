# $OpenBSD: Makefile,v 1.96 2013/08/20 22:05:52 zhuk Exp $

COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	2.3.4
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}
PKGNAME-client=	freeciv-client-${VERSION}
PKGNAME-share=	freeciv-share-${VERSION}
CATEGORIES=	games
HOMEPAGE=	http://www.freeciv.org/

REVISION-main=	1
REVISION-client=0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/}
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

USE_GROFF =	Yes
MULTI_PACKAGES=	-main -share

MODULES=	devel/gettext
WANTLIB-main +=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-main +=	Xrandr Xrender expat fontconfig freetype graphite2
WANTLIB-main +=	pixman-1 pthread pthread-stubs xcb xcb-render xcb-shm

CONFIGURE_ARGS=	--with-ggz-client=no

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+= -client
CONFIGURE_ARGS+= --enable-client=gtk2 \
		 --disable-sdl-mixer
.else
CONFIGURE_ARGS+= --enable-client=no
.endif

PKG_ARCH-share=	*
LIB_DEPENDS-share=
WANTLIB-share=

LIB_DEPENDS =	archivers/bzip2 \
		x11/gtk+2

WANTLIB +=		bz2 c m z
WANTLIB +=		atk-1.0 cairo ffi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB +=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB +=		harfbuzz pango-1.0 pangocairo-1.0
WANTLIB +=		pangoft2-1.0 pcre png

WANTLIB-main +=		${WANTLIB}
WANTLIB-main +=		ncurses readline

WANTLIB-client +=	${WANTLIB}
WANTLIB-client +=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-client +=	Xinerama Xrandr Xrender expat fontconfig freetype graphite2
WANTLIB-client +=	pixman-1 pthread pthread-stubs xcb xcb-render xcb-shm

RUN_DEPENDS-client= devel/desktop-file-utils \
		    freeciv-share-${VERSION}:${BUILD_PKGPATH},-share \
		    x11/gtk+2,-guic

RUN_DEPENDS-main=   freeciv-share-${VERSION}:${BUILD_PKGPATH},-share \
		    devel/desktop-file-utils \
		    x11/gtk+2,-guic

USE_GMAKE=	Yes
USE_LIBTOOL =	No

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

.include <bsd.port.mk>
