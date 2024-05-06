COMMENT=	parse and build CSS from Python

CATEGORIES=	textproc

MODPY_EGG_VERSION=	2.7.1
DISTNAME=	cssutils-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

# GPLv3
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://github.com/jaraco/cssutils

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

# tests also need jaraco.test (not in ports)
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR}

.include <bsd.port.mk>
