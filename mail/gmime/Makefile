# $OpenBSD: Makefile,v 1.54 2016/12/18 10:00:06 ajacoutot Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		2.6.22

SHARED_LIBS +=  gmime-2.6            0.2      # 622.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

# XXX No rule to make target 'GMime-2.6.metadata', needed by 'gmime-2.6.vapi'
#MODGNOME_TOOLS +=	vala

# needed to build the tests
BUILD_DEPENDS +=	security/libgpg-error

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mono

.include <bsd.port.mk>
