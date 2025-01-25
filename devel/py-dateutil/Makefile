COMMENT=	Python API for advanced date calculations

MODPY_DISTV=	2.9.0.post0
DISTNAME=	python-dateutil-${MODPY_DISTV}
PKGNAME=	py-dateutil-${MODPY_DISTV:S/.post/pl/}
CATEGORIES=	devel

HOMEPAGE=	https://dateutil.readthedocs.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-six
TEST_DEPENDS=	devel/py-freezegun \
		devel/py-hypothesis

.include <bsd.port.mk>
