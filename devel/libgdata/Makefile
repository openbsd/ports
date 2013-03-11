# $OpenBSD: Makefile,v 1.31 2013/03/11 10:50:10 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.13.2

SHARED_LIBS +=  gdata                16.0     # 17.1

CATEGORIES=		devel net

HOMEPAGE=		http://live.gnome.org/libgdata

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl dbus-1 ffi gck-1 gcr-base-3 gcrypt gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring goa-1.0 gobject-2.0
WANTLIB += gpg-error gthread-2.0 idn m nspr4 nss3 oauth p11-kit
WANTLIB += pcre plc4 plds4 pthread smime3 softokn3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl ssl3 xml2 z

MODULES=		devel/gettext \
			x11/gnome

# needed for demos/scrapbook
BUILD_DEPENDS=		x11/gtk+3

LIB_DEPENDS=		devel/libsoup,-gnome \
			net/liboauth \
			x11/gnome/gcr \
			x11/gnome/online-accounts

MODGNOME_TOOLS= 	goi

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-static

.include <bsd.port.mk>
