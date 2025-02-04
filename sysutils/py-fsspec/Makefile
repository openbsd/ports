COMMENT=	specification for pythonic filesystems

MODPY_DISTV=	2025.2.0
DISTNAME=	fsspec-${MODPY_DISTV}
PKGNAME=	py-fsspec-${MODPY_DISTV}
CATEGORIES=	sysutils

HOMEPAGE=	https://filesystem-spec.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

# optional but common
RUN_DEPENDS=	www/py-aiohttp \
		www/py-requests

# tests not present on pypi; can be extracted from github but if using GH_*
# directly, build does not work. some fail.
NO_TEST=	Yes
TEST_DEPENDS=	math/py-numpy
MODPY_PYTEST_ARGS= --ignore fsspec/tests/test_file.py

.include <bsd.port.mk>
