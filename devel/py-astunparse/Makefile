# included in python core 3.9
COMMENT=		AST unparser for Python

MODPY_EGG_VERSION=	1.6.3
DISTNAME=		astunparse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		devel

HOMEPAGE=		https://github.com/simonpercivall/astunparse

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

TEST_ENV=		PYTHONPATH="${WRKSRC}/lib"

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

.include <bsd.port.mk>
