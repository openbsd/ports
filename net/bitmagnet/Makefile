COMMENT = BitTorrent indexer/search engine and DHT crawler with web UI

MODGO_MODNAME =		github.com/bitmagnet-io/bitmagnet
MODGO_VERSION =		v0.10.0
DISTNAME =		bitmagnet-${MODGO_VERSION}
CATEGORIES =		net databases

HOMEPAGE =		https://bitmagnet.io

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

# pg_trgm
RUN_DEPENDS =		databases/postgresql,-contrib

SVC =			${PKGSTEM}
USER =			_${SVC}
CONF_DIR =		${SYSCONFDIR}/${SVC}
SUBST_VARS =		SVC \
			USER \
			CONF_DIR

.include "modules.inc"
.include <bsd.port.mk>
