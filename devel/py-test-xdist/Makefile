COMMENT=	py.test xdist plugin for distributed testing

DISTNAME=	pytest-xdist-${MODPY_EGG_VERSION}
PKGNAME=	py-test-xdist-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION=	3.5.0
REVISION=		0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-xdist

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-execnet${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		devel/py-apipkg${MODPY_FLAVOR}
# uses its own pytest extension in test
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-pexpect${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR}

.include <bsd.port.mk>
