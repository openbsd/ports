COMMENT=	TNEF decoding and attachment extraction

MODPY_DISTV=	1.4.0
REVISION=	2
DISTNAME=	tnefparse-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	converters
HOMEPAGE=	https://github.com/koodaamo/tnefparse

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	archivers/py-compressed_rtf

# tests in this file require pytest-console-scripts
MODPY_PYTEST_ARGS= --ignore tests/test_cmdline.py

.include <bsd.port.mk>
