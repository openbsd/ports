COMMENT=	datetime-iterator for cron-like formats

MODPY_DISTV=	2.0.1
DISTNAME=	croniter-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-dateutil \
		devel/py-tz
TEST_DEPENDS=	devel/py-tzlocal

.include <bsd.port.mk>
