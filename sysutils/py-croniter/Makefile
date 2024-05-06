COMMENT=	datetime-iterator for cron-like formats

MODPY_EGG_VERSION=	2.0.1
DISTNAME=	croniter-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-tzlocal${MODPY_FLAVOR}

.include <bsd.port.mk>
