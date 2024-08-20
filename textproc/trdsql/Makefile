COMMENT =		run SQL queries on CSV, LTSV, JSON, YAML and TBLN

MODGO_MODNAME =		github.com/noborus/trdsql
MODGO_VERSION =		v1.0.1

DISTNAME =		trdsql-${MODGO_VERSION}

CATEGORIES =		textproc databases

HOMEPAGE =		https://noborus.github.io/trdsql/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

# for patches; remove when no longer needed
WRKDIST =		${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/trdsql
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/trdsql

.include "modules.inc"
# updated from upstream's old version, also see patches
# See: https://github.com/noborus/trdsql/issues/282
MODGO_MODULES += \
	modernc.org/libc				 v1.52.1 \
	modernc.org/memory				 v1.8.0 \
	modernc.org/sqlite				 v1.30.1

.include <bsd.port.mk>
