# $OpenBSD: Makefile,v 1.7 2021/10/26 14:53:39 ajacoutot Exp $

COMMENT=		efficient search engine and triplestore

GNOME_PROJECT=		tracker
GNOME_VERSION=		3.2.0
PKGNAME=		tracker3-${GNOME_VERSION}

SHARED_LIBS += tracker-sparql-3.0        0.1 # 0.200.0

# LGPLv2.1+; GPLv2+; BSD-3-clause
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 icui18n
WANTLIB += icuuc intl json-glib-1.0 m soup-2.4 soup-3.0 sqlite3
WANTLIB += stemmer xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
TEST_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

BUILD_DEPENDS=		shells/bash-completion \
			textproc/asciidoc \
			x11/dbus

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup \
			devel/libsoup3 \
			textproc/icu4c \
			textproc/libstemmer

CONFIGURE_ARGS=		-Dsystemd_user_services=false \
			-Ddocs=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
