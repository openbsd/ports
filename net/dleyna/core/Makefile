# $OpenBSD: Makefile,v 1.2 2015/05/11 07:21:21 jasper Exp $

COMMENT=		dLeyna utility functions library

DISTNAME=		dleyna-core-0.5.0
REVISION=		0

LIB_DEPENDS=		net/gupnp/core

SHARED_LIBS +=  dleyna-core-1.0      0.0      # 4.0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gupnp-1.0 lzma m pcre pthread soup-2.4 sqlite3
WANTLIB += xml2 z

.include <bsd.port.mk>
