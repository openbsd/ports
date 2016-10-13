# $OpenBSD: Makefile,v 1.3 2016/10/13 15:51:38 ajacoutot Exp $

COMMENT=		dLeyna utility functions library

DISTNAME=		dleyna-core-0.5.0
REVISION=		1

LIB_DEPENDS=		net/gupnp/core

SHARED_LIBS +=  dleyna-core-1.0      0.0      # 4.0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gupnp-1.0 iconv intl lzma m pcre pthread soup-2.4 sqlite3
WANTLIB += xml2 z

.include <bsd.port.mk>
