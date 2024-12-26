MODPY_DISTV =		1.2.2
COMMENT =		Python bindings for libssh specific to Ansible use case
DISTNAME =		ansible-pylibssh-${MODPY_DISTV}
PKGNAME =		py-ansible-libssh-${MODPY_DISTV}
CATEGORIES =		sysutils
REVISION =		0

MAINTAINER =		Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ssh

MODULES =		lang/python
MODPY_PI =		Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD =		setuptools_scm

CFLAGS +=		-I${LOCALBASE}/include
BUILD_DEPENDS =		sysutils/py-expandvars \
			lang/cython
LIB_DEPENDS =		security/libssh

TEST_IS_INTERACTIVE =	hangs
TEST_DEPENDS =		devel/py-test-cov \
			devel/py-test-xdist

do-test:
	cd ${WRKSRC}/src; ${SETENV} ${ALL_TEST_ENV} py.test ../tests

.include <bsd.port.mk>
