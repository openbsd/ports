COMMENT=	plugin to provide a prettier summary of py.test runs

MODPY_DISTV=	1.3.0
DISTNAME=	pytest_pretty-${MODPY_DISTV}
PKGNAME=	py-test-pretty-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/samuelcolvin/pytest-pretty

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-rich \
		devel/py-test
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
