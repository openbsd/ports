# $OpenBSD: Makefile,v 1.15 2011/04/07 08:13:45 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.8.0
REVISION=		0

SHARED_LIBS +=  gdata                3.0      # .9.0

CATEGORIES=		devel net

HOMEPAGE=		http://live.gnome.org/libgdata

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 dbus-1 gconf-2 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gnutls gobject-2.0 gpg-error
WANTLIB += gthread-2.0 m pcre proxy soup-2.4 sqlite3 tasn1 xml2 z
WANTLIB += soup-gnome-2.4>=1

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		devel/libsoup,-gnome \
			devel/eggdbus

FAKE_FLAGS+=		DATADIRNAME="share"

LIBTOOL_FLAGS+= 	--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-gnome

.include <bsd.port.mk>
