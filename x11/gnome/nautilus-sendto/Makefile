# $OpenBSD: Makefile,v 1.67 2017/06/22 10:04:20 ajacoutot Exp $

COMMENT=		applications integration into Nautilus

GNOME_PROJECT=		nautilus-sendto
GNOME_VERSION=		3.8.5

CATEGORIES=		mail net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl pcre pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/glib2

FAKE_FLAGS=		schemadir=${PREFIX}/share/schemas/nautilus-sendto

CONFIGURE_STYLE=	gnu

# fix build with clang (see patch-src_nautilus-sendto_c)
CFLAGS=		-Wno-error=format-nonliteral

.include <bsd.port.mk>
