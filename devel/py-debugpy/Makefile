COMMENT =	Python implementation of the debug adapter protocol

MODPY_DISTV=	1.8.6
DISTNAME=	debugpy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
EXTRACT_SUFX=	.zip
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS =	devel/py-trio \
		devel/py-untangle \
		math/py-numpy \
		sysutils/py-psutil \
		textproc/py-defusedxml

.include <bsd.port.mk>
