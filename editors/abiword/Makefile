# $OpenBSD: Makefile,v 1.110 2017/04/10 11:45:27 sthen Exp $

BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	3.0.1
DISTNAME=	abiword-${VERSION}
REVISION=	7

MAJORVER=	${VERSION:C/..$//}
SUBST_VARS=	MAJORVER

SHARED_LIBS +=  abiword-3.0               0.0 # 0.0

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-common bz2 c cairo cairo-gobject croco-0.6 crypto
WANTLIB += curl dbus-1 enchant epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 goffice-0.10 gpg-error
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += idn2 jpeg ltdl lzma m mpfr nettle nghttp2 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs raptor2 rasqal rdf rsvg-2 spectre ssl
WANTLIB += ${LIBCXX} tasn1 unistring uuid wmf-0.2 wmflite-0.2 wv-1.2
WANTLIB += xcb xcb-render xcb-shm xml2 xslt yajl z

MASTER_SITES=   http://www.abisource.com/downloads/abiword/${VERSION}/source/

MODULES=	devel/gettext \
		lang/python

MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-O0
.endif   

MODPY_RUNDEP=	No

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gobject-introspection

# plugins/openxml.so
BUILD_DEPENDS +=devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
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
		--without-gnomevfs \
		--without-libical \
		--without-champlain \
		--without-inter7eps \
		--without-libtidy

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/abiword-${MAJORVER}/plugins/*.a
	rm ${PREFIX}/lib/abiword-${MAJORVER}/plugins/*.la

.include <bsd.port.mk>
