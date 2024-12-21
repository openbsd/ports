COMMENT=	API to interact with pyproject.toml-based projects

MODPY_DISTV=	1.7.1
DISTNAME=	pyproject_api-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/tox-dev/pyproject-api
HOMEPAGE=	https://pyproject-api.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

RUN_DEPENDS=	sysutils/py-packaging
TEST_DEPENDS=	devel/py-virtualenv \
		devel/py-test-cov \
		devel/py-test-mock \
		devel/py-wheel

.include <bsd.port.mk>
