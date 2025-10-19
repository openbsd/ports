COMMENT=	better dates and times for Python

MODPY_DISTV=	1.4.0
DISTNAME=	arrow-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	https://arrow.readthedocs.io

# Apache 2.0
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

RUN_DEPENDS=	devel/py-dateutil \
		devel/py-types-python-dateutil

TEST_DEPENDS=	devel/py-simplejson \
		devel/py-test-cov \
		devel/py-test-mock \
		devel/py-tz

.include <bsd.port.mk>
