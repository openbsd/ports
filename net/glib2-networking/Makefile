COMMENT=		network-related gio modules for GLib

GNOME_VERSION=		2.80.1
GNOME_PROJECT=		glib-networking
PKGNAME=		glib2-networking-${GNOME_VERSION}
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GLPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gnutls gobject-2.0 intl proxy

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/glib2 \
			net/libproxy \
			security/gnutls

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
