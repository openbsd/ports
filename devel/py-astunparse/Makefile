# included in python core 3.9
COMMENT=		AST unparser for Python

MODPY_DISTV=	1.6.3
DISTNAME=		astunparse-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		5

CATEGORIES=		devel

HOMEPAGE=		https://github.com/simonpercivall/astunparse

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

TEST_ENV=		PYTHONPATH="${WRKSRC}/lib"

RUN_DEPENDS +=		devel/py-six \
			devel/py-wheel

.include <bsd.port.mk>
