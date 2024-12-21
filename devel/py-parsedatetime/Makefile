COMMENT=		parse human-readable date/time text

MODPY_DISTV=	2.6
DISTNAME=		parsedatetime-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		3

CATEGORIES=		devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_PYTEST_ARGS=	tests/*.py

BUILD_DEPENDS=		devel/py-test-runner
TEST_DEPENDS=		textproc/py-ICU

.include <bsd.port.mk>
