# $OpenBSD: Makefile,v 1.52 2016/06/13 09:22:10 ajacoutot Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		2.6.20
REVISION=		1

SHARED_LIBS +=  gmime-2.6            0.1      # 619.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

# needed to build the tests
BUILD_DEPENDS +=	security/libgpg-error

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mono

.include <bsd.port.mk>
