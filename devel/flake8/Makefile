COMMENT=	modular python code checker wrapping pep8 and pyflakes

MODPY_DISTV=	7.3.0
DISTNAME=	flake8-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/pycqa/flake8
HOMEPAGE=	https://flake8.pycqa.org

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-codestyle<2.15.0 \
		devel/py-mccabe<0.8.0 \
		devel/pyflakes<3.5.0

BUILD_DEPENDS=	devel/py-test-runner

NO_TEST=	Yes

.include <bsd.port.mk>
