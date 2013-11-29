# $OpenBSD: Makefile,v 1.94 2013/11/29 08:51:52 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	3.0.0
DISTNAME=	abiword-${VERSION}
REVISION=	0

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
WANTLIB += curl dbus-1 enchant expat ffi fontconfig freetype fribidi
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 goffice-0.10 gpg-error graphite2 gs
WANTLIB += gsf-1 gthread-2.0 gtk-3 harfbuzz idn jpeg lasem-0.4
WANTLIB += ltdl m mpfr pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs raptor2 rasqal rdf
WANTLIB += rsvg-2 spectre ssl stdc++ wmf-0.2 wmflite-0.2 wv-1.2
WANTLIB += xcb xcb-render xcb-shm xml2 xslt yajl z

MASTER_SITES=   http://www.abisource.com/downloads/abiword/${VERSION}/source/

MODULES=	devel/gettext \
		lang/python

MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

MODPY_RUNDEP=	No

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gobject-introspection

# plugins/openxml.so
BUILD_DEPENDS +=devel/boost

RUN_DEPENDS=	devel/desktop-file-utils

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
