# $OpenBSD: Makefile,v 1.107 2016/04/26 07:38:32 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.20.0

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += c cairo cairo-gobject gck-1 gcr-base-3 gcr-ui-3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 gtk-3 intl lber ldap p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pthread secret-1 soup-2.4

MODULES=		x11/gnome \
			devel/dconf

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS=		databases/openldap \
			x11/gnome/gcr \
			x11/gnome/libsecret \
			devel/libsoup \
			security/gpgme \
			net/avahi

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 2.X
BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
