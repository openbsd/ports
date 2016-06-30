# $OpenBSD: Makefile,v 1.54 2016/06/30 11:52:39 jasper Exp $

# XXX: PORTROACH is set at the end of this file to override gnome.port.mk

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.17.5

SHARED_LIBS +=  gdata                20.0     # 23.3

CATEGORIES=		devel net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl ffi gck-1 gcr-base-3 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += idn m nghttp2 nspr4 nss3 oauth p11-kit pcre plc4 plds4 pthread
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 xml2 z json-glib-1.0
WANTLIB += lzma

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		net/uhttpmock
TEST_DEPENDS=		net/uhttpmock

# needed for demos/scrapbook
BUILD_DEPENDS +=	x11/gtk+3

LIB_DEPENDS=		devel/libsoup \
			net/liboauth \
			x11/gnome/gcr \
			x11/gnome/online-accounts

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

# needed for tests
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>

# Clear portroach annotation for we track an odd-numbered development branch
PORTROACH=
