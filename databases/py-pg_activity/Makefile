COMMENT =		command line tool for PostgreSQL server activity monitoring

MODPY_DISTV =	3.5.1
DISTNAME =		pg_activity-${MODPY_DISTV}
REVISION =		0

GH_ACCOUNT =		dalibo
GH_PROJECT =		pg_activity
GH_TAGNAME =		v${MODPY_DISTV}

CATEGORIES =		databases

# PostgreSQL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		databases/py-psycopg2 \
			devel/py-attrs \
			sysutils/py-blessed \
			sysutils/py-psutil \
			textproc/py-humanize

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/pg_activity.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pg_activity
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/doc/py-pg_activity

.include <bsd.port.mk>
