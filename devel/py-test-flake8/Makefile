COMMENT=	py.test plugin to check FLAKE8 requirements

DISTNAME=	pytest_flake8-${MODPY_DISTV}
PKGNAME=	py-test-flake8-${MODPY_DISTV}
MODPY_DISTV=	1.3.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tholo/pytest-flake8

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/flake8 \
		devel/py-test

.include <bsd.port.mk>
