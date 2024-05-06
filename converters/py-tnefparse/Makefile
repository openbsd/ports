COMMENT=	TNEF decoding and attachment extraction

MODPY_EGG_VERSION=	1.4.0
REVISION=	1
DISTNAME=	tnefparse-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	converters
HOMEPAGE=	https://github.com/koodaamo/tnefparse

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	archivers/py-compressed_rtf${MODPY_FLAVOR}

# tests in this file require pytest-console-scripts
MODPY_PYTEST_ARGS= --ignore tests/test_cmdline.py

.include <bsd.port.mk>
