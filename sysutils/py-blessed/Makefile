COMMENT=	easy, practical library for making terminal apps

MODPY_DISTV=	1.27.0
DISTNAME=	blessed-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/jquast/blessed

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-wcwidth
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
