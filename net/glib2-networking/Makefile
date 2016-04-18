# $OpenBSD: Makefile,v 1.38 2016/04/18 06:52:05 ajacoutot Exp $

COMMENT=		network-related gio modules for glib2

GNOME_VERSION=		2.48.0
GNOME_PROJECT=		glib-networking
PKGNAME=		glib2-networking-${GNOME_VERSION}

CATEGORIES=		net

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GLPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += hogweed iconv idn intl m nettle p11-kit pcre proxy
WANTLIB += pthread stdc++ tasn1 z

MODULES=		x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/glib2 \
			net/libproxy \
			security/gnutls

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-ca-certificates=/etc/ssl/cert.pem

TEST_IS_INTERACTIVE=	x11

post-install:
	rm ${PREFIX}/lib/gio/modules/*.a

.include <bsd.port.mk>
