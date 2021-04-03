# $OpenBSD: Makefile,v 1.6 2021/04/03 08:10:46 ajacoutot Exp $

COMMENT=		efficient search engine and triplestore

GNOME_PROJECT=		tracker
GNOME_VERSION=		3.0.4
PKGNAME=		tracker3-${GNOME_VERSION}

SHARED_LIBS += tracker-sparql-3.0        0.0 # 0.4.0

# LGPLv2.1+; GPLv2+; BSD-3-clause
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 icui18n icuuc intl json-glib-1.0
WANTLIB += m soup-2.4 sqlite3 stemmer xml2

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
			textproc/icu4c \
			textproc/libstemmer

CONFIGURE_ARGS=		-Dsystemd_user_services=false \
			-Ddocs=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
