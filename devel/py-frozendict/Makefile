COMMENT=	immutable dictionary

MODPY_DISTV=	2.4.6
DISTNAME=	frozendict-${MODPY_DISTV}
PKGNAME=	py-frozendict-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/slezica/python-frozendict

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI=	Yes

# allow finding the extension
MODPY_TEST_DIR=		${WRKSRC}/build
MODPY_PYTEST_ARGS=	..

.include <bsd.port.mk>
