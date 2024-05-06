COMMENT =		ORM (Object Relational Manager) for Python

MODPY_EGG_VERSION =	3.11.0
REVISION =		1
DISTNAME =		SQLObject-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlobject-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		https://www.sqlobject.org/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-formencode${MODPY_FLAVOR}>=1.3.1 \
			devel/py-dispatcher${MODPY_FLAVOR}>=2.0.4 \
			devel/py-setuptools${MODPY_FLAVOR}

.include <bsd.port.mk>
