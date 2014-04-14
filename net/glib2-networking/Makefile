# $OpenBSD: Makefile,v 1.31 2014/04/14 18:39:19 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	network-related gio modules for glib2

GNOME_VERSION=	2.40.1
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

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ca-certificates=/etc/ssl/cert.pem

TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/gio/modules/*.a

.include <bsd.port.mk>
