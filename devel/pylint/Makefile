COMMENT=		lint-like code checker for Python code

# py-astroid and pylint usually need keeping in-sync
MODPY_DISTV=	3.1.0
DISTNAME=	pylint-${MODPY_DISTV}
PKGNAME=	pylint3-${MODPY_DISTV}
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	https://www.pylint.org/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-dill \
		sysutils/py-platformdirs \
		devel/py-astroid>=3.1.0,<3.2.0 \
		devel/py-isort<6 \
		devel/py-mccabe<0.8 \
		textproc/py-tomlkit \
		devel/py-typing-extensions

# tests require data files (tests/regrtest_data/* and maybe others)
# which aren't in the pypi tar
NO_TEST=	Yes
#TEST_DEPENDS=	devel/py-test-benchmark

.include <bsd.port.mk>
