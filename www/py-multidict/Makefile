COMMENT=	multidict implementation

MODPY_DISTV=	6.1.0
DISTNAME=	multidict-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www devel
REVISION=	0

WANTLIB +=	pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-test-cov
MODPY_TEST_LINK_SO= Yes

.include <bsd.port.mk>
