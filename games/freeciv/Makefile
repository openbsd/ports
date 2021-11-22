# $OpenBSD: Makefile,v 1.126 2021/11/22 15:00:42 espie Exp $

COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	2.6.4
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}

CATEGORIES=	games

HOMEPAGE=	http://www.freeciv.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/}
EXTRACT_SUFX=	.tar.bz2

cWANTLIB += bz2 c crypto curl execinfo iconv intl lzma m nghttp2 pthread
cWANTLIB += sqlite3 ssl z ${MODLUA_WANTLIB}

WANTLIB-main += readline ${cWANTLIB}

WANTLIB-client += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-client += Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo cairo-gobject
WANTLIB-client += epoxy expat fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB-client += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-client += gthread-2.0 gtk-3 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-client += pangoft2-1.0 pixman-1 png xcb xcb-render xcb-shm
WANTLIB-client += ${cWANTLIB}

WANTLIB-share=

MODULES=	lang/lua
MODLUA_VERSION = 5.3

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS-main=	archivers/xz \
			databases/sqlite3 \
			net/curl
LIB_DEPENDS-client=	archivers/xz \
			databases/sqlite3 \
			net/curl \
			x11/gtk+3

LIB_DEPENDS-share=

RUN_DEPENDS-client= freeciv-share-${VERSION}:${BUILD_PKGPATH},-share \
		    devel/desktop-file-utils \
		    x11/gtk+3,-guic

RUN_DEPENDS-main=   freeciv-share-${VERSION}:${BUILD_PKGPATH},-share \
		    devel/desktop-file-utils \
		    x11/gtk+3,-guic

SEPARATE_BUILD = Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	No

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv -lexecinfo" \
		LUA_CFLAGS=-I${MODLUA_INCL_DIR} \
		LUA_LIBS="${MODLUA_LIB} -lm"

CONFIGURE_ARGS=	--with-ggz-client=no \
		--enable-mapimg=no \
		--enable-sys-lua \
		--enable-fcdb=sqlite3

MULTI_PACKAGES=	-main -share

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+= -client
CONFIGURE_ARGS+= --enable-client=gtk3 \
		 --enable-fcmp=gtk3 \
		 --disable-sdl-mixer
.else
CONFIGURE_ARGS+= --enable-client=no
.endif

PKG_ARCH-share=	*

post-install:
	mv ${WRKINST}/etc/freeciv ${PREFIX}/share/examples/

.include <bsd.port.mk>
