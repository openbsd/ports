# $OpenBSD: Makefile,v 1.44 2014/09/18 08:10:40 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.16.0

SHARED_LIBS +=  gdata                17.0     # 21.0

CATEGORIES=		devel net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl ffi gck-1 gcr-base-3 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += idn m nspr4 nss3 oauth p11-kit pcre plc4 plds4 pthread
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 xml2 z json-glib-1.0

MODULES=		devel/gettext \
			x11/gnome

# needed for demos/scrapbook
BUILD_DEPENDS=		x11/gtk+3

BUILD_DEPENDS=		net/libuhttpmock
TEST_DEPENDS=		net/libuhttpmock

LIB_DEPENDS=		devel/libsoup \
			net/liboauth \
			x11/gnome/gcr \
			x11/gnome/online-accounts

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

# needed for tests
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
