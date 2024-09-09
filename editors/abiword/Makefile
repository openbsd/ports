BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

COMMENT=	free cross-platform WYSIWYG word processor

DIST_TUPLE=	gnome World AbiWord 86cfe26d09bc089881f6b604f880021266957d3c .
WRKDIST=	${WRKDIR}/AbiWord-86cfe26d09bc089881f6b604f880021266957d3c

VERSION=	3.0.5.0.270807
DISTNAME=	abiword-${VERSION}

SHARED_LIBS +=  abiword-3.1-test          0.0 # 0.0

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += aspell atk-1.0 atk-bridge-2.0 atspi avahi-common bz2
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 enchant-2
WANTLIB += epoll-shim epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 goffice-0.10 gpg-error
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += icudata icuuc intl jpeg ltdl lzma m mpfr nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_quictls pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-8 pixman-1 png raptor2 rasqal
WANTLIB += rdf rsvg-2 spectre ssl uuid wayland-client wayland-cursor
WANTLIB += wayland-egl wmf-0.2 wmflite-0.2 wv-1.2 xcb xcb-render
WANTLIB += xcb-shm xkbcommon xml2 xslt yajl z

MODULES=	lang/python

# C++11
COMPILER =	base-clang ports-gcc

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-O0
.endif   

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gobject-introspection \
		devel/py-gobject3${MODPY_FLAVOR}

# plugins/openxml.so
BUILD_DEPENDS +=devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		x11/gtk+4,-guic

LIB_DEPENDS=	devel/fribidi \
		converters/wv \
		devel/goffice \
		textproc/enchant2 \
		textproc/redland

# src/af/util/xp/ut_go_file.cpp
RUN_DEPENDS +=	devel/xdg-utils

PLUGINS=	goffice opendocument openwriter openxml pdf

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
BUILD_DEPENDS +=	devel/autoconf-archive
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=	--enable-introspection \
		--enable-plugins="${PLUGINS}" \
		--enable-clipart \
		--enable-templates

# let's try to keep this package small-ish
CONFIGURE_ARGS += \
		--without-evolution-data-server \
		--without-libical \
		--without-champlain \
		--without-inter7eps \
		--without-libtidy

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_VALGRIND=

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-patch:
	cd ${WRKSRC} && /bin/sh autogen-common.sh

post-install:
#	rm ${PREFIX}/lib/libabiword-${VERSION:R}*.{a,la}
#	rm ${PREFIX}/lib/abiword-${VERSION:R}/plugins/*.{a,la}
	rm ${PREFIX}/lib/libabiword-3.1*.{a,la}
	rm ${PREFIX}/lib/abiword-3.1/plugins/*.{a,la}

.include <bsd.port.mk>
