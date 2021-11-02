# $OpenBSD: Makefile,v 1.10 2021/11/02 00:00:16 sthen Exp $

COMMENT =		command line tool for PostgreSQL server activity monitoring

MODPY_EGG_VERSION =	2.2.0
DISTNAME =		pg_activity-${MODPY_EGG_VERSION}
REVISION =		0

GH_ACCOUNT =		dalibo
GH_PROJECT =		pg_activity
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		databases

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# PostgreSQL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		databases/py-psycopg2${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			sysutils/py-blessed${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pg_activity
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/doc/py-pg_activity

.include <bsd.port.mk>
