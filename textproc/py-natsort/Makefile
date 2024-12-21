COMMENT=	simple yet flexible natural sorting

MODPY_DISTV=	8.4.0
DISTNAME=	natsort-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	textproc devel

# MIT
PERMIT_PACKAGE=	Yes

# https://github.com/SethMMorton/natsort
HOMEPAGE=	https://natsort.readthedocs.io/

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# could also make use of 'fastnumbers'
RUN_DEPENDS=	textproc/py-ICU

TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-test-mock

.include <bsd.port.mk>
