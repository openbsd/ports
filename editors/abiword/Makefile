BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	3.0.5
DISTNAME=	abiword-${VERSION}
REVISION=	6

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += aspell atk-1.0 atk-bridge-2.0 avahi-common bz2 c cairo
WANTLIB += cairo-gobject crypto curl dbus-1 enchant-2 epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += goffice-0.10 gpg-error graphite2 gs gsf-1 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl jpeg ltdl lzma m mpfr nghttp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png raptor2 rasqal rdf rsvg-2 spectre ssl uuid wmf-0.2
WANTLIB += wmflite-0.2 wv-1.2 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += yajl z zstd

SITES=		http://www.abisource.com/downloads/abiword/${VERSION}/source/

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

CONFIGURE_STYLE= gnu
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

post-install:
	rm ${PREFIX}/lib/libabiword-${VERSION:R}*.{a,la}
	rm ${PREFIX}/lib/abiword-${VERSION:R}/plugins/*.{a,la}

.include <bsd.port.mk>
