# $OpenBSD: Makefile,v 1.94 2014/04/01 17:03:15 jasper Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.12.0

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += c cairo cairo-gobject fontconfig freetype gck-1 gcr-3
WANTLIB += gcr-base-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpgme gthread-2.0 gtk-3 lber
WANTLIB += ldap m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread secret-1 soup-2.4 z

LIB_DEPENDS=		databases/openldap \
			x11/gnome/gcr \
			x11/gnome/libsecret \
			devel/libsoup \
			security/gpgme \
			net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS= 	yelp
MODGNOME_TOOLS +=	gtk-update-icon-cache
MODGNOME_TOOLS +=	desktop-file-utils

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
