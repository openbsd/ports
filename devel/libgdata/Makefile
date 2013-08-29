# $OpenBSD: Makefile,v 1.35 2013/08/29 07:20:12 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.14.0

SHARED_LIBS +=  gdata                16.1     # 18.2

CATEGORIES=		devel net

HOMEPAGE=		http://live.gnome.org/libgdata

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl ffi gck-1 gcr-base-3 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += idn m nspr4 nss3 oauth p11-kit pcre plc4 plds4 pthread
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl
WANTLIB += ssl3 xml2 z

MODULES=		devel/gettext \
			x11/gnome

# needed for demos/scrapbook
BUILD_DEPENDS=		x11/gtk+3

LIB_DEPENDS=		devel/libsoup,-gnome \
			net/liboauth \
			x11/gnome/gcr \
			x11/gnome/online-accounts

MODGNOME_TOOLS= 	gi vala

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-static

.include <bsd.port.mk>
