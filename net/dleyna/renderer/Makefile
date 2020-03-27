# $OpenBSD: Makefile,v 1.6 2020/03/27 20:08:40 kmos Exp $

COMMENT=		service for interacting with DMRs

GH_PROJECT=		dleyna-renderer
REVISION=		1

SHARED_LIBS +=	dleyna-renderer-1.0       0.0 # 1.3

WANTLIB += c dleyna-core-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gssdp-1.2 gupnp-1.2 gupnp-av-1.0 gupnp-dlna-2.0
WANTLIB += iconv idn2 intl lzma m pcre psl pthread soup-2.4 sqlite3
WANTLIB += unistring xml2 z

RUN_DEPENDS=		net/dleyna/connector-dbus

LIB_DEPENDS=		net/dleyna/core>=0.6.0p0 \
			net/gupnp/av \
			net/gupnp/dlna

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/dleyna-renderer

.include <bsd.port.mk>
