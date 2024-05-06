COMMENT=		Git object database

MODPY_EGG_VERSION =	4.0.11
DISTNAME=		gitdb-${MODPY_EGG_VERSION}
PKGNAME=		py-gitdb-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS=		devel/py-smmap${MODPY_FLAVOR}<6.0

# some tests only work in a git checkout of gitdb (require .git files)

.include <bsd.port.mk>
