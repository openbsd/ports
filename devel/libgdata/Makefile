# $OpenBSD: Makefile,v 1.1.1.1 2009/09/23 19:35:14 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Google Data API based Glib client library

GNOME_PROJECT=		libgdata
GNOME_VERSION=		0.4.0
SHARED_LIBS +=  gdata                0.0      # .5.0

CATEGORIES=		devel net

HOMEPAGE=		http://live.gnome.org/libgdata

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ORBit-2 dbus-1 dbus-glib-1 gconf-2 gcrypt gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += m pcre soup-2.4 sqlite3 tasn1 xml2 z

LIB_DEPENDS=		soup-gnome-2.4.>=1::devel/libsoup,-gnome \
			proxy::net/libproxy,-gnome

LIBTOOL_FLAGS+= 	--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-gnome

.include <bsd.port.mk>
