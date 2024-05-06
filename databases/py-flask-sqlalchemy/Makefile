COMMENT =	sqlalchemy support for flask

MODPY_EGG_VERSION = 2.5.1
DISTNAME =	Flask-SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	databases www

HOMEPAGE =	https://flask-sqlalchemy.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR  =	python3

USE_GMAKE =	Yes

RUN_DEPENDS =	databases/py-sqlalchemy${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
