# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:36 sthen Exp $

COMMENT =	sqlalchemy support for flask

MODPY_EGG_VERSION = 2.4.1
DISTNAME =	Flask-SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	databases www

HOMEPAGE =	https://flask-sqlalchemy.palletsprojects.com/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS = Yes
MODPY_PYTEST =	Yes
USE_GMAKE =	Yes

RUN_DEPENDS =	databases/py-sqlalchemy${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
