COMMENT-main=	Civilization clone for X11; multiplayer; game server
COMMENT-client=	Freeciv client
COMMENT-share=	shared data files for Freeciv

VERSION=	3.0.6
DISTNAME=	freeciv-${VERSION}
PKGNAME-main=	freeciv-server-${VERSION}

CATEGORIES=	games

HOMEPAGE=	https://www.freeciv.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeciv/}
EXTRACT_SUFX=	.tar.xz

cWANTLIB += bz2 c crypto curl execinfo iconv icudata icuuc intl
cWANTLIB += lzma m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_openssl
cWANTLIB += pthread sqlite3 ssl z ${MODLUA_WANTLIB}

WANTLIB-main += readline ${cWANTLIB}

WANTLIB-client += ${cWANTLIB}
WANTLIB-client += FLAC SDL2 SDL2_mixer X11 Xcursor Xext Xfixes Xi Xrandr
WANTLIB-client += Xrender Xss atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB-client += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB-client += mikmod modplug mpg123 ogg opus opusfile pango-1.0 pangocairo-1.0
WANTLIB-client += samplerate sndio usbhid vorbis vorbisfile xcb

WANTLIB-share=

MODULES=	lang/lua
MODLUA_VERSION = 5.3

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS-main=	archivers/xz \
			databases/sqlite3 \
			net/curl \
			textproc/icu4c
LIB_DEPENDS-client=	archivers/xz \
			databases/sqlite3 \
			devel/sdl2-mixer \
			net/curl \
			textproc/icu4c \
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
		--enable-sdl-mixer=sdl2
.else
CONFIGURE_ARGS+= --enable-client=no
.endif

PKG_ARCH-share=	*

post-install:
	mv ${WRKINST}/etc/freeciv ${PREFIX}/share/examples/
	cd ${PREFIX}/man/man6 && \
	    rm freeciv-{gtk2,gtk3*,mp-cli,mp-gtk*,mp-qt,qt,sdl*}.6
	rm ${PREFIX}/lib/*.{a,la}

.include <bsd.port.mk>
