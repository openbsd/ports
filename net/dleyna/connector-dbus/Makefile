# $OpenBSD: Makefile,v 1.5 2019/02/10 12:57:12 jasper Exp $

COMMENT=		dLeyna dbus connector

GH_PROJECT=		dleyna-connector-dbus
GH_TAGNAME=		v0.3.0
REVISION=		0

BUILD_DEPENDS=		x11/dbus
RUN_DEPENDS=		x11/dbus
LIB_DEPENDS=		net/dleyna/core>=0.6.0p0

WANTLIB += dleyna-core-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.2 gupnp-1.2 iconv idn2 intl lzma m pcre psl
WANTLIB += pthread soup-2.4 sqlite3 unistring xml2 z

post-install:
	rm ${PREFIX}/lib/dleyna-1.0/connectors/*.la

.include <bsd.port.mk>
