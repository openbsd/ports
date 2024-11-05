COMMENT=	multidict implementation

MODPY_EGG_VERSION=	6.1.0
DISTNAME=	multidict-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www devel

WANTLIB +=	pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR}
MODPY_TEST_LINK_SO= Yes

.include <bsd.port.mk>
