COMMENT =		command line tool for PostgreSQL server activity monitoring

MODPY_EGG_VERSION =	3.5.1
DISTNAME =		pg_activity-${MODPY_EGG_VERSION}

GH_ACCOUNT =		dalibo
GH_PROJECT =		pg_activity
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		databases

# PostgreSQL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		databases/py-psycopg2${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			sysutils/py-blessed${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/pg_activity.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pg_activity
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/doc/py-pg_activity

.include <bsd.port.mk>
