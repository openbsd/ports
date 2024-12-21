COMMENT =		PostgreSQL HA cluster management tool

MODPY_DISTV =	4.0.4
DISTNAME =		patroni-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		databases

HOMEPAGE =		https://github.com/zalando/patroni

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		databases/py-psycopg2

RUN_DEPENDS =		databases/postgresql,-server \
			databases/py-psycopg2 \
			devel/py-click \
			devel/py-dateutil \
			devel/py-six \
			security/py-cryptography \
			sysutils/py-psutil \
			textproc/cdiff \
			textproc/py-prettytable \
			textproc/py-yaml \
			www/py-urllib3

MODPY_PYBUILD =		setuptools

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/patroni
	${INSTALL_DATA} ${FILESDIR}/patroni.yml \
		${PREFIX}/share/examples/patroni

.include <bsd.port.mk>
