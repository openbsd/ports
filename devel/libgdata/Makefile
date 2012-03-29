# $OpenBSD: Makefile,v 1.25 2012/03/29 06:39:20 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.11.1

SHARED_LIBS +=  gdata                15.0      # .15.0

CATEGORIES=		devel net

HOMEPAGE=		http://live.gnome.org/libgdata

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += crypto curl dbus-1 ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 idn
WANTLIB += m nspr4 nss3 oauth pcre plc4 plds4 smime3 softokn3
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 ssl ssl3 xml2 z

MODULES=		devel/gettext \
			x11/gnome

# needed for demos/scrapbook
BUILD_DEPENDS=		x11/gtk+3

LIB_DEPENDS=		devel/libsoup,-gnome \
			net/liboauth

MODGNOME_TOOLS= 	goi

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-static \
			--enable-gnome \
			--with-ca-certs=/etc/ssl/cert.pem

.include <bsd.port.mk>
