COMMENT=	decorator to deprecate old python classes, etc

MODPY_EGG_VERSION=	1.2.14

DISTNAME=	Deprecated-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tantale/deprecated

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-wrapt${MODPY_FLAVOR}<2

# for pkg_resources
TEST_DEPENDS=	devel/py-setuptools${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
