# $OpenBSD: Makefile,v 1.9 2018/04/14 10:14:04 rsadowski Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		3.2.0
PKGNAME=		gmime30-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=  gmime-3.0            2.0      # 200.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv idn intl
WANTLIB += pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			devel/libidn \
			security/gpgme

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
