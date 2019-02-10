# $OpenBSD: Makefile,v 1.5 2019/02/10 12:57:12 jasper Exp $

COMMENT=		dLeyna utility functions library

GH_ACCOUNT=		intel
GH_PROJECT=		dleyna-core
GH_TAGNAME=		v0.6.0
REVISION=		0

LIB_DEPENDS=		net/gupnp/core>=1.1.2

SHARED_LIBS +=  dleyna-core-1.0      0.1      # 5.0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.2
WANTLIB += gupnp-1.2 iconv idn2 intl lzma m pcre psl pthread soup-2.4
WANTLIB += sqlite3 unistring xml2 z

.include <bsd.port.mk>
