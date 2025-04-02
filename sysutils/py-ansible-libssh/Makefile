MODPY_DISTV =		1.2.3
COMMENT =		Python bindings for libssh specific to Ansible use case
DIST_TUPLE =		github ansible pylibssh baa2ab830d44760c95348081603fbde3e23507a4 .
PKGNAME =		py-ansible-libssh-${MODPY_DISTV}pre20250327
CATEGORIES =		sysutils

MAINTAINER =		Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ssh

MODULES =		lang/python
MODPY_PI =		Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD =		setuptools_scm

DEBUG_PACKAGES =	${BUILD_PACKAGES}

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
