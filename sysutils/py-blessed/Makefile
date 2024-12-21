COMMENT=	easy, practical library for making terminal apps

MODPY_DISTV=	1.20.0

DISTNAME=	blessed-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/jquast/blessed

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# depends on some Windows things?
#NO_TEST=	Yes

RUN_DEPENDS=	devel/py-six \
		devel/py-wcwidth
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
