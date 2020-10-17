# $OpenBSD: Makefile,v 1.39 2020/10/17 23:27:03 kmos Exp $

COMMENT=	simplified packaging system for Python modules

MODPY_EGG_VERSION=	41.6.0
DISTNAME=		setuptools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			0
CATEGORIES=		devel
EXTRACT_SUFX=		.zip
REVISION=		0

HOMEPAGE=		https://setuptools.readthedocs.io/en/latest/

MAINTAINER=		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
MODPY_PYTEST_ARGS =	setuptools/tests

SUBST_VARS+=		MODPY_FLAVOR

FLAVORS=		python3
FLAVOR?=

# Not listed, but needed for tests
TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

# Override automatic py-setuptools depend to avoid recursion
MODPY_SETUPUTILS_DEPEND=

# test_virtualenv.py needs unported modules
pre-test:
	rm -f ${WRKSRC}/setuptools/tests/test_virtualenv.py

.include <bsd.port.mk>
