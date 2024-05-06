COMMENT =	Python implementation of the debug adapter protocol

MODPY_EGG_VERSION=	1.8.1
DISTNAME=	debugpy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
EXTRACT_SUFX=	.zip

REVISION=	0

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS =	devel/py-trio${MODPY_FLAVOR} \
		devel/py-untangle${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR}

.include <bsd.port.mk>
