# $OpenBSD: Makefile,v 1.51 2018/04/22 13:30:28 ajacoutot Exp $

COMMENT=		network-related gio modules for GLib

GNOME_VERSION=		2.56.0
GNOME_PROJECT=		glib-networking
PKGNAME=		glib2-networking-${GNOME_VERSION}

CATEGORIES=		net

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GLPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gnutls gobject-2.0 intl p11-kit
WANTLIB += proxy

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/glib2 \
			net/libproxy \
			security/gnutls

CONFIGURE_ARGS=		-Dca_certificates_path="/etc/ssl/cert.pem"

.include <bsd.port.mk>
