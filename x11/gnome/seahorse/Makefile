# $OpenBSD: Makefile,v 1.120 2020/05/14 15:58:56 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.36

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib c gck-1
WANTLIB += gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gpgme gtk-3 handy-0.0 intl ldap pwquality
WANTLIB += secret-1 soup-2.4

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
			x11/gnome/libsecret \
			x11/libhandy

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 2.X
BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
