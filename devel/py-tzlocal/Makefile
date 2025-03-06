COMMENT=	Python tzinfo object for the local timezone

MODPY_DISTV=	5.3.1
DISTNAME=	tzlocal-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/regebro/tzlocal

# CC0 1.0 Universal
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-mock

.include <bsd.port.mk>
