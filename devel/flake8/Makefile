COMMENT=	modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION=	7.0.0
DISTNAME=	flake8-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	devel

# https://github.com/pycqa/flake8
HOMEPAGE=	https://flake8.pycqa.org

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-codestyle${MODPY_FLAVOR}<2.12.0 \
		devel/py-mccabe${MODPY_FLAVOR}<0.8.0 \
		devel/pyflakes${MODPY_FLAVOR}<3.3.0

BUILD_DEPENDS=	devel/py-test-runner${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
