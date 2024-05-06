COMMENT=	library used to interact with Git repositories

MODPY_EGG_VERSION=	3.1.41
DISTNAME=	GitPython-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-gitdb${MODPY_FLAVOR}

.include <bsd.port.mk>
