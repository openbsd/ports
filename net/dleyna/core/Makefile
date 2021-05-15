# $OpenBSD: Makefile,v 1.6 2021/05/15 16:41:46 ajacoutot Exp $

COMMENT=		dLeyna utility functions library

GH_PROJECT=		dleyna-core

LIB_DEPENDS=		net/gupnp/core

SHARED_LIBS += dleyna-core-1.0           1.0 # 5.0.0

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gupnp-1.2

.include <bsd.port.mk>
