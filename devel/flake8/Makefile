COMMENT=	modular python code checker wrapping pep8 and pyflakes

MODPY_DISTV=	7.4.1
DISTNAME=	flake8-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/pycqa/flake8
HOMEPAGE=	https://flake8.pycqa.org

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-codestyle<2.16.0 \
		devel/py-mccabe<0.8.0 \
		devel/pyflakes<4.1.0

NO_TEST=	Yes

.include <bsd.port.mk>
