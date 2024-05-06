COMMENT=	filters to enhance web typography

MODPY_EGG_VERSION=	2.0.7
DISTNAME=	typogrify-${MODPY_EGG_VERSION}
PKGNAME=	py-typogrify-${MODPY_EGG_VERSION}
REVISION=	2

CATEGORIES=	textproc

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	textproc/py-smartypants${MODPY_FLAVOR}

# requires Django3
NO_TEST=	Yes

.include <bsd.port.mk>
