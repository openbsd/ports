# $OpenBSD: Makefile,v 1.107 2016/04/28 07:37:59 ajacoutot Exp $

COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	2.5.3
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}
PKGNAME-client=	freeciv-client-${VERSION}
PKGNAME-share=	freeciv-share-${VERSION}
REVISION-main=	1
REVISION-client=1
REVISION-share=	0

CATEGORIES=	games

HOMEPAGE=	http://www.freeciv.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/}
EXTRACT_SUFX=	.tar.bz2

cWANTLIB += bz2 c crypto curl iconv idn intl lzma m nghttp2 pthread ssl z
cWANTLIB += ${MODLUA_WANTLIB}

WANTLIB-main += ncurses readline ${cWANTLIB}

WANTLIB-client += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-client += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-client += cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB-client += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-client += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB-client += harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB-client += pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB-client += ${cWANTLIB}

WANTLIB-share=

MODULES=	lang/lua
MODLUA_VERSION = 5.2

BUILD_DEPENDS=	devel/gettext-tools
LIB_DEPENDS=	archivers/xz \
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
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv" \
		LUA_CFLAGS=-I${MODLUA_INCL_DIR} \
		LUA_LIBS="${MODLUA_LIB} -lm" \
		ac_cv_header_execinfo_h=no

CONFIGURE_ARGS=	--with-ggz-client=no \
		--enable-mapimg=no \
		--enable-sys-lua

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
