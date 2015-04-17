# $OpenBSD: Makefile,v 1.1.1.1 2015/04/17 18:39:00 ajacoutot Exp $

COMMENT=		dLeyna dbus connector

DISTNAME=		dleyna-connector-dbus-0.2.0

BUILD_DEPENDS=		x11/dbus
RUN_DEPENDS=		x11/dbus
LIB_DEPENDS=		net/dleyna/core

WANTLIB += dleyna-core-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gupnp-1.0 lzma m pcre pthread soup-2.4 sqlite3
WANTLIB += uuid xml2 z

post-install:
	rm ${PREFIX}/lib/dleyna-1.0/connectors/*.la

.include <bsd.port.mk>
