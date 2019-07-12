# $OpenBSD: Makefile,v 1.127 2019/07/12 20:46:04 sthen Exp $

BROKEN=		Abort trap on startup (pango related?)

# XXX error: 'nullptr' was not declared in this scope
CXXFLAGS +=	-std=c++11
# XXX error: xap_Dialog.cpp:270:24: error: cast from 'std::nullptr_t' to 'char' loses precision
CXXFLAGS +=	-fpermissive

BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

COMMENT=	free cross-platform WYSIWYG word processor

# git commit 75dd142f (https://gitlab.gnome.org/World/AbiWord)
MASTER_SITES=	https://distfiles.bsdfrog.org/

VERSION=	3.0.2.1
DISTNAME=	abiword-${VERSION}

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += avahi-common bz2 c cairo cairo-gobject croco-0.6 crypto
WANTLIB += curl dbus-1 enchant epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 goffice-0.10 gpg-error
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv idn2 intl jpeg ltdl lzma m mpfr nettle nghttp2
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread raptor2 rasqal rdf
WANTLIB += rsvg-2 spectre ssl ${LIBCXX} tasn1 unistring uuid wmf-0.2
WANTLIB += wmflite-0.2 wv-1.2 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += yajl z

#MASTER_SITES=	http://www.abisource.com/downloads/abiword/${VERSION}/source/

MODULES=	lang/python

COMPILER =	base-clang ports-gcc

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-O0
.endif   

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gobject-introspection \
		devel/py-gobject3

# plugins/openxml.so
BUILD_DEPENDS +=devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-gobject3 \
		x11/gtk+3,-guic

LIB_DEPENDS=	devel/fribidi \
		converters/wv \
		devel/goffice \
		textproc/enchant \
		textproc/redland

# src/af/util/xp/ut_go_file.cpp
RUN_DEPENDS +=	devel/xdg-utils

PLUGINS=	goffice opendocument openwriter openxml pdf

CONFIGURE_STYLE= autoreconf
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

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh
BUILD_DEPENDS +=	devel/autoconf-archive

post-install:
	rm ${PREFIX}/lib/libabiword-3.1*.{a,la}
	rm ${PREFIX}/lib/abiword-3.1/plugins/*.{a,la}

.include <bsd.port.mk>
