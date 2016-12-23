# $OpenBSD: Makefile,v 1.55 2016/12/23 23:27:15 kili Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		2.6.22
REVISION=		0

SHARED_LIBS +=  gmime-2.6            0.2      # 622.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl pcre pthread z
WANTLIB += assuan gpg-error gpgme-pthread

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

# XXX No rule to make target 'GMime-2.6.metadata', needed by 'gmime-2.6.vapi'
#MODGNOME_TOOLS +=	vala

LIB_DEPENDS=		devel/glib2 \
			security/gpgme

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mono

.include <bsd.port.mk>
