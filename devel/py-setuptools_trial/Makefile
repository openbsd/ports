COMMENT=	setuptools plugin for unit tests with Twisted's trial

MODPY_EGG_VERSION=	0.6.0
DISTNAME=	setuptools_trial-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	9

CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS =	devel/py-setuptools${MODPY_FLAVOR}

# lots of pytest modules
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
