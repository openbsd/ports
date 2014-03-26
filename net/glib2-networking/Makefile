# $OpenBSD: Makefile,v 1.27 2014/03/26 13:46:49 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	network-related gio modules for glib2

GNOME_VERSION=	2.40.0
GNOME_PROJECT=	glib-networking

PKGNAME=	glib2-networking-${GNOME_VERSION}

CATEGORIES=	net

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GLPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += hogweed m nettle p11-kit pcre proxy pthread stdc++
WANTLIB += tasn1 z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	net/libproxy \
		security/gnutls \
		devel/glib2

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-ca-certificates=/etc/ssl/cert.pem

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
