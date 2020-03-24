# $OpenBSD: Makefile,v 1.6 2020/03/24 15:26:26 kmos Exp $

COMMENT=		service for interacting with DMSes

GH_PROJECT=		dleyna-server
REVISION=		1

SHARED_LIBS +=	dleyna-server-1.0         0.0 # 1.3

RUN_DEPENDS=		net/dleyna/connector-dbus>=0.3.0p0

LIB_DEPENDS=		net/dleyna/core>=0.6.0p0 \
			net/gupnp/av \
			net/gupnp/dlna

WANTLIB += c dleyna-core-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gssdp-1.2 gupnp-1.2 gupnp-av-1.0 gupnp-dlna-2.0
WANTLIB += iconv idn2 intl lzma m pcre psl pthread soup-2.4 sqlite3
WANTLIB += unistring xml2 z

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/dleyna-server


.include <bsd.port.mk>
