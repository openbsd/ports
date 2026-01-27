COMMENT=	decorator to deprecate old python classes, etc

MODPY_DISTV=	1.3.1
DISTNAME=	deprecated-${MODPY_DISTV}
PKGNAME=	py-deprecated-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tantale/deprecated

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-wrapt<3

# for pkg_resources
TEST_DEPENDS=	devel/py-setuptools

.include <bsd.port.mk>
