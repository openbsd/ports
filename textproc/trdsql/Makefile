COMMENT =		run SQL queries on CSV, LTSV, JSON, YAML and TBLN

MODGO_MODNAME =		github.com/noborus/trdsql
MODGO_VERSION =		v1.1.0

DISTNAME =		trdsql-${MODGO_VERSION}

CATEGORIES =		textproc databases

HOMEPAGE =		https://noborus.github.io/trdsql/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/trdsql
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/trdsql

.include "modules.inc"
.include <bsd.port.mk>
