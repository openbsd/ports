# $OpenBSD: Makefile,v 1.4 2017/10/09 17:45:27 ajacoutot Exp $

COMMENT=		dLeyna utility functions library

GH_ACCOUNT=		intel
GH_PROJECT=		dleyna-core
GH_TAGNAME=		v0.6.0

LIB_DEPENDS=		net/gupnp/core

SHARED_LIBS +=  dleyna-core-1.0      0.1      # 5.0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gupnp-1.0 iconv intl lzma m pcre pthread soup-2.4 sqlite3
WANTLIB += xml2 z

.include <bsd.port.mk>
