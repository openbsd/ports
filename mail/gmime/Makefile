# $OpenBSD: Makefile,v 1.60 2019/07/12 20:47:27 sthen Exp $

PORTROACH=		limit:^2\.6

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		2.6.23
REVISION=		2

SHARED_LIBS +=  gmime-2.6            0.2      # 623.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv intl pcre
WANTLIB += pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			security/gpgme

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mono

.include <bsd.port.mk>
