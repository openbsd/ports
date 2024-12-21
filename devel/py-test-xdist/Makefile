COMMENT=	py.test xdist plugin for distributed testing

DISTNAME=	pytest-xdist-${MODPY_DISTV}
PKGNAME=	py-test-xdist-${MODPY_DISTV}
MODPY_DISTV=	3.5.0
REVISION=		1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-xdist

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-execnet \
		devel/py-test \
		devel/py-apipkg
# uses its own pytest extension in test
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-pexpect \
		sysutils/py-filelock

.include <bsd.port.mk>
