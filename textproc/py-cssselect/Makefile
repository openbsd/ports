COMMENT=	parse CSS3 Selectors and translates them to XPath 1.0

MODPY_EGG_VERSION=	1.2.0
DISTNAME=	cssselect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

TEST_DEPENDS=	textproc/py-lxml${MODPY_FLAVOR}

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
