# $OpenBSD: Makefile,v 1.1.1.1 2013/10/23 22:04:58 landry Exp $

COMMENT =	graphical report tool for PostgreSQL
SHARED_ONLY =	Yes

DISTNAME =	pg_stats_reporter-1.0.1
CATEGORIES =	databases www

HOMEPAGE =	http://pgstatsinfo.projects.pgfoundry.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://pgfoundry.org/frs/download.php/3437/
NO_BUILD =	Yes
NO_TEST =	Yes

PREFIX =		${VARBASE}/www
INSTDIR =	${PREFIX}/pg_stats_reporter/

SUBST_VARS +=	INSTDIR
MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-pgsql

do-install:
	cp -pR ${WRKSRC}/html/ ${PREFIX}/htdocs/
	mv ${PREFIX}/htdocs/pg_stats_reporter/{pg_stats_reporter,index}.php
	cp -pR ${WRKSRC}/pg_stats_reporter ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR} ${PREFIX}/htdocs/pg_stats_reporter/
	chown www:www ${INSTDIR}/{cache,compiled}

.include <bsd.port.mk>
