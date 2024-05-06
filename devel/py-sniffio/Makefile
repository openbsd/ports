COMMENT =	sniff out which async library is being used

MODPY_EGG_VERSION=	1.3.0
DISTNAME=	sniffio-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# MIT or Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-curio${MODPY_FLAVOR}

.include <bsd.port.mk>
