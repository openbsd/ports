COMMENT=	immutable dictionary

MODPY_EGG_VERSION=	2.3.10
DISTNAME=	frozendict-${MODPY_EGG_VERSION}
PKGNAME=	py-frozendict-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/slezica/python-frozendict

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI=	Yes

# allow finding the extension
MODPY_TEST_DIR=		${WRKSRC}/build
MODPY_PYTEST_ARGS=	..

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
