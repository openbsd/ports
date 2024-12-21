COMMENT=	WSDL parsing services package for Python

MODPY_DISTV=	0.4.8
DISTNAME=	wstools-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www
REVISION=	8

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-pbr \
		devel/py-six \
		devel/py-test-runner
RUN_DEPENDS=	devel/py-pbr \
		devel/py-six
TEST_DEPENDS=	devel/py-test-runner

.include <bsd.port.mk>
