# $OpenBSD: Makefile,v 1.16 2011/04/18 14:00:25 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.8.1

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

WANTLIB += dbus-1 gcrypt gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gthread-2.0 m pcre soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xml2 z

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
