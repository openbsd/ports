# $OpenBSD: Makefile,v 1.17 2020/03/21 13:39:24 ajacoutot Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		3.2.7
PKGNAME=		gmime30-${GNOME_VERSION}

SHARED_LIBS +=  gmime-3.0            2.2      # 206.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv idn2 intl pcre pthread
WANTLIB += unistring z

MODULES +=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			devel/libidn2 \
			security/gpgme

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
