COMMENT=		complementary command-line interface for Git

MODPY_DISTV=	1.2.0
DISTNAME=		legit-${MODPY_DISTV}
CATEGORIES=		devel
REVISION=		4

HOMEPAGE=		https://frostming.github.io/legit/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-clint>=0.5.1 \
			devel/py-click \
			devel/py-crayons \
			devel/py-gitpython>=1.0.2 \
			devel/py-six

NO_TEST=		Yes

.include <bsd.port.mk>
