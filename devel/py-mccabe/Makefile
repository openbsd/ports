COMMENT=	McCabe complexity checker for Python

MODPY_EGG_VERSION=	0.7.0
DISTNAME=	mccabe-${MODPY_EGG_VERSION}
PKGNAME=	py-mccabe-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/flintwork/mccabe

# Expat
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

# requires Hypothesmith (not ported)
NO_TEST=	Yes
#TEST_DEPENDS=	devel/py-hypothesis${MODPY_FLAVOR}

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
