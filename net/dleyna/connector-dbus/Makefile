# $OpenBSD: Makefile,v 1.4 2017/10/09 17:45:27 ajacoutot Exp $

COMMENT=		dLeyna dbus connector

GH_PROJECT=		dleyna-connector-dbus
GH_TAGNAME=		v0.3.0

BUILD_DEPENDS=		x11/dbus
RUN_DEPENDS=		x11/dbus
LIB_DEPENDS=		net/dleyna/core

WANTLIB += dleyna-core-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gupnp-1.0 iconv intl lzma m pcre pthread
WANTLIB += soup-2.4 sqlite3 xml2 z

post-install:
	rm ${PREFIX}/lib/dleyna-1.0/connectors/*.la

.include <bsd.port.mk>
