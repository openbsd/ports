# $OpenBSD: Makefile,v 1.65 2020/03/13 12:39:57 jasper Exp $

# XXX: PORTROACH is set at the end of this file to override gnome.port.mk

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.17.12
REVISION =		0

SHARED_LIBS += gdata                     21.0 # 22.5.0

CATEGORIES=		devel net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += gcr-base-3 gio-2.0 glib-2.0 goa-1.0 gobject-2.0 json-glib-1.0
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS=		net/uhttpmock
TEST_DEPENDS=		net/uhttpmock

# needed for demos/scrapbook
BUILD_DEPENDS +=	x11/gtk+3

LIB_DEPENDS=		devel/libsoup \
			x11/gnome/gcr \
			x11/gnome/online-accounts

MODGNOME_TOOLS=		gobject-introspection vala

# needed for tests
PORTHOME=		${WRKDIR}

CONFIGURE_ARGS=		-Dgtk_doc=false \
			-Dinstalled_tests=false

.include <bsd.port.mk>

# Clear portroach annotation for we track an odd-numbered development branch
PORTROACH=
