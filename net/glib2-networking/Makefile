# $OpenBSD: Makefile,v 1.5 2011/04/26 18:23:36 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	network-related gio modules for glib2

GNOME_VERSION=	2.28.6.1
GNOME_PROJECT=	glib-networking

PKGNAME=	glib2-networking-${GNOME_VERSION}

CATEGORIES=	net

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GLPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gcrypt gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 hogweed m modman nettle pcre
WANTLIB += proxy pthread stdc++ tasn1 z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	net/libproxy>=0.4.6 \
		security/gnutls \
		devel/glib2 \
		security/libgcrypt

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-ca-certificates=/etc/ssl/cert.pem

.include <bsd.port.mk>
