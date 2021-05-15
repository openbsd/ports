# $OpenBSD: Makefile,v 1.7 2021/05/15 16:41:46 ajacoutot Exp $

COMMENT=		service for interacting with DMRs

GH_PROJECT=		dleyna-renderer

SHARED_LIBS += dleyna-renderer-1.0       1.0 # 1.0.3

RUN_DEPENDS=		net/dleyna/connector-dbus

LIB_DEPENDS=		net/dleyna/core \
			net/gupnp/av \
			net/gupnp/dlna

WANTLIB += c dleyna-core-1.0 gio-2.0 glib-2.0 gobject-2.0 gssdp-1.2
WANTLIB += gupnp-1.2 gupnp-av-1.0 gupnp-dlna-2.0 m soup-2.4

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dleyna-renderer
	mv ${WRKINST}/etc/dleyna-renderer-service.conf \
		${PREFIX}/share/examples/dleyna-renderer

.include <bsd.port.mk>
