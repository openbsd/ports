COMMENT=	Git object database

MODPY_DISTV=	4.0.12
DISTNAME=	gitdb-${MODPY_DISTV}
PKGNAME=	py-gitdb-${MODPY_DISTV}
CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-smmap<6.0

# some tests only work in a git checkout of gitdb (require .git files)

.include <bsd.port.mk>
