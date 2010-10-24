# $OpenBSD: Makefile,v 1.82 2010/10/24 20:36:44 sthen Exp $

COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	2.2.3
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}
PKGNAME-client=	freeciv-client-${VERSION}
PKGNAME-share=	freeciv-share-${VERSION}
CATEGORIES=	games
HOMEPAGE=	http://www.freeciv.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/}
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

USE_GROFF =	Yes
MULTI_PACKAGES=	-main -share

MODULES=	devel/gettext
WANTLIB=	bz2 c m z ncurses readline

CONFIGURE_ARGS=	--with-ggz-client=no

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
MULTI_PACKAGES+= -client
CONFIGURE_ARGS+= --enable-client=gtk2 \
		 --disable-sdl-mixer
.else
CONFIGURE_ARGS+= --enable-client=no
.endif

PKG_ARCH-share=	*
LIB_DEPENDS-share=
WANTLIB-share=

LIB_DEPENDS=	::archivers/bzip2

WANTLIB-client = ${WANTLIB}
WANTLIB-client += GL Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi Xinerama
WANTLIB-client += Xrandr Xxf86vm X11 Xext Xrender atk-1.0 cairo drm expat
WANTLIB-client += fontconfig freetype gdk_pixbuf-2.0 gdk-x11-2.0 gio-2.0
WANTLIB-client += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB-client += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB-client += png pthread pthread-stubs xcb xcb-render xcb-shm

LIB_DEPENDS-main= ${LIB_DEPENDS}
LIB_DEPENDS-client= ${LIB_DEPENDS} ::x11/gtk+2
RUN_DEPENDS-client= :desktop-file-utils-*:devel/desktop-file-utils \
		    :freeciv-share-${VERSION}:${BUILD_PKGPATH},-share

RUN_DEPENDS-main=   :freeciv-share-${VERSION}:${BUILD_PKGPATH},-share

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

.include <bsd.port.mk>
