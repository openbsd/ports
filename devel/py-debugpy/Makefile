COMMENT =	Python implementation of the debug adapter protocol

MODPY_DISTV=	1.8.17
DISTNAME=	debugpy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# no tests in pypi sdist, only in git
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-trio \
		devel/py-untangle \
		math/py-numpy \
		sysutils/py-psutil \
		textproc/py-defusedxml

.include <bsd.port.mk>
