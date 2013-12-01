# $OpenBSD: Makefile,v 1.26 2013/12/01 12:14:02 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	network-related gio modules for glib2

GNOME_VERSION=	2.38.2
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

# XXX Bogus element outside of every prefix: /files/ca-roots.pem...
FAKE_FLAGS=	testfiles_DATA=

.include <bsd.port.mk>
