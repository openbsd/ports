COMMENT=	filesystem event monitoring

MODPY_DISTV=	6.0.0
DISTNAME=	watchdog-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# Apache 2.0
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-yaml
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-timeout \
		devel/py-flaky

.include <bsd.port.mk>
