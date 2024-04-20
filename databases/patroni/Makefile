COMMENT =		PostgreSQL HA cluster management tool

MODPY_EGG_VERSION =	3.3.0
DISTNAME =		patroni-${MODPY_EGG_VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/zalando/patroni

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		databases/py-psycopg2${MODPY_FLAVOR}

RUN_DEPENDS =		databases/postgresql,-server \
			databases/py-psycopg2${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/cdiff \
			textproc/py-prettytable,python3 \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/patroni
	${INSTALL_DATA} ${FILESDIR}/patroni.yml \
		${PREFIX}/share/examples/patroni

.include <bsd.port.mk>
