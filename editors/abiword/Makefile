# $OpenBSD: Makefile,v 1.102 2015/05/05 17:00:17 sthen Exp $

BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

SHARED_ONLY=	Yes

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	3.0.1
DISTNAME=	abiword-${VERSION}
REVISION=	2

MAJORVER=	${VERSION:C/..$//}
SUBST_VARS=	MAJORVER

SHARED_LIBS +=  abiword-3.0               0.0 # 0.0

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi avahi-common bz2
WANTLIB += c cairo cairo-gobject croco-0.6 crypto curl dbus-1 enchant
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += goffice-0.10 gpg-error graphite2 gs gsf-1 gthread-2.0 gtk-3
WANTLIB += harfbuzz hogweed idn jpeg ltdl lzma m mpfr nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs raptor2 rasqal rdf rsvg-2 spectre ssl
WANTLIB += stdc++ tasn1 uuid wmf-0.2 wmflite-0.2 wv-1.2 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt yajl z

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
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
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
