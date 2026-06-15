COMMENT=	parse human-readable date/time text

MODPY_DISTV=	2.6
DISTNAME=	parsedatetime-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	6

HOMEPAGE=	https://github.com/bear/parsedatetime

CATEGORIES=	devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= tests/*.py

TEST_DEPENDS=	textproc/py-ICU

.include <bsd.port.mk>
