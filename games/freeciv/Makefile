# $OpenBSD: Makefile,v 1.100 2015/04/10 14:43:49 naddy Exp $

COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	2.5.0
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}
PKGNAME-client=	freeciv-client-${VERSION}
PKGNAME-share=	freeciv-share-${VERSION}

CATEGORIES=	games

HOMEPAGE=	http://www.freeciv.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/}
EXTRACT_SUFX=	.tar.bz2

cWANTLIB += bz2 c crypto curl idn lzma m pthread ssl z
cWANTLIB += ${MODLUA_WANTLIB} ${MODGETTEXT_WANTLIB}

WANTLIB-main += ncurses readline ${cWANTLIB}

WANTLIB-client += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB-client += atk-1.0 cairo expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB-client += gdk-x11-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-client += gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB-client += pixman-1 png pthread-stubs xcb xcb-render xcb-shm ${cWANTLIB}

WANTLIB-share=

MODULES=	devel/gettext lang/lua
MODLUA_VERSION = 5.2

LIB_DEPENDS=	archivers/xz \
		net/curl \
		x11/gtk+2

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
		LUA_LIBS="${MODLUA_LIB} -lm"

CONFIGURE_ARGS=	--with-ggz-client=no \
		--enable-mapimg=no \
		--enable-sys-lua

MULTI_PACKAGES=	-main -share

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+= -client
CONFIGURE_ARGS+= --enable-client=gtk2 \
		 --enable-fcmp=gtk2 \
		 --disable-sdl-mixer
.else
CONFIGURE_ARGS+= --enable-client=no
.endif

PKG_ARCH-share=	*

post-install:
	mv ${WRKINST}/etc/freeciv ${PREFIX}/share/examples/

.include <bsd.port.mk>
