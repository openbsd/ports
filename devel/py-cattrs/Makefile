COMMENT=	composable class support for attrs and dataclasses

MODPY_DISTV=	25.3.0
DISTNAME=	cattrs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://cattrs.rs/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

RUN_DEPENDS =	devel/py-attrs \
		devel/py-typing-extensions

# XXX: needs immutables>=0.21
TEST_DEPENDS=	devel/py-coverage \
		devel/py-hypothesis \
		devel/py-test-benchmark \
		devel/py-test-xdist

.include <bsd.port.mk>
