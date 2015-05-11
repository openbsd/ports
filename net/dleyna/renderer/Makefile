# $OpenBSD: Makefile,v 1.2 2015/05/11 21:20:54 jasper Exp $

COMMENT=		service for interacting with DMRs

DISTNAME=		dleyna-renderer-0.5.0
REVISION=		0

SHARED_LIBS +=	dleyna-renderer-1.0       0.0 # 1.3

RUN_DEPENDS=		net/dleyna/connector-dbus

LIB_DEPENDS=		net/dleyna/core \
			net/gupnp/av \
			net/gupnp/dlna

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/dleyna-renderer

WANTLIB += c dleyna-core-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gssdp-1.0 gupnp-1.0 gupnp-av-1.0 gupnp-dlna-2.0
WANTLIB += lzma m pcre pthread soup-2.4 sqlite3 xml2 z

.include <bsd.port.mk>
