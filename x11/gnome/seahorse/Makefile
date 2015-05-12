# $OpenBSD: Makefile,v 1.105 2015/05/12 15:49:48 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.16.0

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += c cairo cairo-gobject fontconfig freetype gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gpgme gthread-2.0 gtk-3 lber
WANTLIB += ldap m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread secret-1 soup-2.4 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS=		databases/openldap \
			x11/gnome/gcr \
			x11/gnome/libsecret \
			devel/libsoup \
			security/gpgme \
			net/avahi

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 1.X
BUILD_DEPENDS+=		security/gnupg
RUN_DEPENDS+=		security/gnupg

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
