# $OpenBSD: Makefile,v 1.117 2019/07/07 11:20:54 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.32.2

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject gck-1 gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpgme gtk-3
WANTLIB += intl lber-2.4 ldap-2.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pthread pwquality secret-1 soup-2.4

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS=		databases/openldap \
			devel/libsoup \
			net/avahi \
			security/gpgme \
			security/libpwquality \
			x11/gnome/gcr \
			x11/gnome/libsecret

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 2.X
BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2

.include <bsd.port.mk>
