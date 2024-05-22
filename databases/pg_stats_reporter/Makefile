COMMENT =	graphical report tool for PostgreSQL

DISTNAME =	pg_stats_reporter-3.2.1
REVISION =	4
CATEGORIES =	databases www

HOMEPAGE =	https://pgstatsinfo.sourceforge.net/
PORTROACH =	site:https://github.com/ossc-db/pg_stats_reporter/releases/

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=pgstatsinfo/}
NO_BUILD =	Yes
NO_TEST =	Yes

PREFIX =		${VARBASE}/www
INSTDIR =	${PREFIX}/pg_stats_reporter_lib/

SUBST_VARS +=	INSTDIR
MODULES =	lang/php
MODPHP_VERSION = 7.4
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-pgsql \
		lang/php/${MODPHP_VERSION},-intl

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${SUBST_CMD} -c -m 755 ${WRKSRC}/bin/pg_stats_reporter ${WRKINST}/usr/local/bin/pg_stats_reporter
	cp -pR ${WRKSRC}/html/ ${PREFIX}/htdocs/
	mv ${PREFIX}/htdocs/pg_stats_reporter/{pg_stats_reporter,index}.php
	cp -pR ${WRKSRC}/pg_stats_reporter_lib ${PREFIX}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR} ${PREFIX}/htdocs/pg_stats_reporter/
	chown www:www ${INSTDIR}/{cache,compiled}

.include <bsd.port.mk>
