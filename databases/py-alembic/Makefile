COMMENT =		database migration tool for sqlalchemy

MODPY_EGG_VERSION =	1.7.5

DISTNAME =		alembic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://alembic.sqlalchemy.org

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		databases/py-sqlalchemy${MODPY_FLAVOR}>=1.3.0 \
			devel/py-importlib_resources${MODPY_FLAVOR} \
			devel/py-importlib-metadata${MODPY_FLAVOR}

.include <bsd.port.mk>
