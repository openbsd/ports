COMMENT=	specification for pythonic filesystems

MODPY_EGG_VERSION=	2024.12.0
DISTNAME=	fsspec-${MODPY_EGG_VERSION}
PKGNAME=	py-fsspec-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	https://filesystem-spec.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

# optional but common
RUN_DEPENDS=	www/py-aiohttp${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

# tests not present on pypi; can be extracted from github but if using GH_*
# directly, build does not work. some fail.
NO_TEST=	Yes
TEST_DEPENDS=	math/py-numpy${MODPY_FLAVOR}
MODPY_PYTEST_ARGS= --ignore fsspec/tests/test_file.py

.include <bsd.port.mk>
