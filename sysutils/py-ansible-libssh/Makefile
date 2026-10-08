COMMENT =		Ansible connection plugin using libssh

MODPY_DISTV =		1.4.0
DISTNAME =		ansible_pylibssh-${MODPY_DISTV}
PKGNAME =		py-ansible-libssh-${MODPY_DISTV}
CATEGORIES =		sysutils

MAINTAINER =		Denis Fondras <denis@openbsd.org>

# https://github.com/ansible/pylibssh
HOMEPAGE =		https://ansible-pylibssh.readthedocs.io/

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

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-test-xdist
# disable running tests in parallel, so we can see which ones hang
MODPY_PYTEST_ARGS =	-v -n0
# these tests (which call ssh/sshd) hang; disable them for now
MODPY_PYTEST_IGNORE =	tests/integration/sshd_test.py \
			tests/unit/channel_test.py \
			tests/unit/scp_test.py

.include <bsd.port.mk>
