COMMENT=		service for interacting with DMSes

GH_PROJECT=		dleyna-server

SHARED_LIBS += dleyna-server-1.0         1.0 # 1.0.3

RUN_DEPENDS=		net/dleyna/connector-dbus

LIB_DEPENDS=		net/dleyna/core \
			net/gupnp/av \
			net/gupnp/dlna

WANTLIB += c dleyna-core-1.0 gio-2.0 glib-2.0 gobject-2.0 gssdp-1.2
WANTLIB += gupnp-1.2 gupnp-av-1.0 gupnp-dlna-2.0 soup-2.4 xml2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dleyna-server
	mv ${WRKINST}/etc/dleyna-server-service.conf \
		${PREFIX}/share/examples/dleyna-server

.include <bsd.port.mk>
