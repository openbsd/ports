COMMENT=	extend nose coverage to add Cobertura-style XML reports

MODPY_EGG_VERSION=	1.0.11
DISTNAME=	nosexcover-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	9

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= nosexcover/tests.py

HOMEPAGE=	https://github.com/cmheisel/nose-xcover/

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-coverage${MODPY_FLAVOR}

.include <bsd.port.mk>
