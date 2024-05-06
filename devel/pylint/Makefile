COMMENT=		lint-like code checker for Python code

# py-astroid and pylint usually need keeping in-sync
MODPY_EGG_VERSION=	3.1.0
DISTNAME=	pylint-${MODPY_EGG_VERSION}
PKGNAME=	pylint3-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://www.pylint.org/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-dill${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		devel/py-astroid${MODPY_FLAVOR}>=3.1.0,<3.2.0 \
		devel/py-isort${MODPY_FLAVOR}<6 \
		devel/py-mccabe${MODPY_FLAVOR}<0.8 \
		textproc/py-tomli${MODPY_FLAVOR} \
		textproc/py-tomlkit${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR}

# tests require data files (tests/regrtest_data/* and maybe others)
# which aren't in the pypi tar
NO_TEST=	Yes
#TEST_DEPENDS=	devel/py-test-benchmark${MODPY_FLAVOR}

.include <bsd.port.mk>
