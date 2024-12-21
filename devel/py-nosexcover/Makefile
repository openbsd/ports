COMMENT=	extend nose coverage to add Cobertura-style XML reports

MODPY_DISTV=	1.0.11
DISTNAME=	nosexcover-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	10

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= nosexcover/tests.py

HOMEPAGE=	https://github.com/cmheisel/nose-xcover/

RUN_DEPENDS=	devel/py-nose \
		devel/py-coverage

.include <bsd.port.mk>
