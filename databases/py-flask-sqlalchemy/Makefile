COMMENT =	sqlalchemy support for flask

# 3.1.1 needs sqlalchemy 2.x
MODPY_EGG_VERSION = 3.0.5
DISTNAME =	flask_sqlalchemy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	databases www

HOMEPAGE =	https://flask-sqlalchemy.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	flit_core
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR  =	python3

USE_GMAKE =	Yes

RUN_DEPENDS =	databases/py-sqlalchemy${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
