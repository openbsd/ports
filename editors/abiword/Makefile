# $OpenBSD: Makefile,v 1.132 2020/12/23 14:41:06 ajacoutot Exp $

BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	3.0.4
DISTNAME=	abiword-${VERSION}
REVISION=	1

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += avahi-common bz2 c cairo cairo-gobject crypto curl
WANTLIB += dbus-1 enchant epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 goffice-0.10 gpg-error
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv idn2 intl jpeg ltdl lzma m mpfr nettle nghttp2
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png raptor2 rasqal rdf rsvg-2 spectre ssl
WANTLIB += tasn1 unistring uuid wmf-0.2 wmflite-0.2 wv-1.2 xcb
WANTLIB += xcb-render xcb-shm xml2 xslt yajl z zstd

MASTER_SITES=	http://www.abisource.com/downloads/abiword/${VERSION}/source/

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

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
		x11/gtk+3,-guic

LIB_DEPENDS=	devel/fribidi \
		converters/wv \
		devel/goffice \
		textproc/enchant \
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
