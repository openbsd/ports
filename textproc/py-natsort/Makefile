COMMENT=	simple yet flexible natural sorting

MODPY_EGG_VERSION=	8.4.0
DISTNAME=	natsort-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc devel

# MIT
PERMIT_PACKAGE=	Yes

# https://github.com/SethMMorton/natsort
HOMEPAGE=	https://natsort.readthedocs.io/

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

# could also make use of 'fastnumbers'
RUN_DEPENDS=	textproc/py-ICU${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
