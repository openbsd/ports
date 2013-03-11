# $OpenBSD: Makefile,v 1.20 2013/03/11 11:35:47 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	network-related gio modules for glib2

GNOME_VERSION=	2.34.2
GNOME_PROJECT=	glib-networking

PKGNAME=	glib2-networking-${GNOME_VERSION}

CATEGORIES=	net

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GLPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gthread-2.0 hogweed m nettle p11-kit pcre proxy pthread
WANTLIB += stdc++ tasn1 z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0

LIB_DEPENDS=	net/libproxy \
		security/gnutls \
		devel/glib2>=2.34.0

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-ca-certificates=/etc/ssl/cert.pem

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
