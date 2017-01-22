# $OpenBSD: Makefile,v 1.56 2017/01/22 01:13:47 ajacoutot Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		2.6.23

SHARED_LIBS +=  gmime-2.6            0.2      # 623.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme-pthread gthread-2.0 iconv intl pcre
WANTLIB += pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			security/gpgme

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mono

.include <bsd.port.mk>
