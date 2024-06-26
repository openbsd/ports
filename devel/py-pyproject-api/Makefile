COMMENT=	API to interact with pyproject.toml-based projects

MODPY_EGG_VERSION=	1.7.1
DISTNAME=	pyproject_api-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/tox-dev/pyproject-api
HOMEPAGE=	https://pyproject-api.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	sysutils/py-packaging${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-virtualenv${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-wheel${MODPY_FLAVOR}

.include <bsd.port.mk>
