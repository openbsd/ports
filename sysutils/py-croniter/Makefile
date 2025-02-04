COMMENT=	datetime-iterator for cron-like formats

MODPY_DISTV=	6.0.0
DISTNAME=	croniter-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-dateutil \
		devel/py-tz
TEST_DEPENDS=	devel/py-tzlocal

.include <bsd.port.mk>
