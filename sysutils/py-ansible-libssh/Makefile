MODPY_DISTV =	1.2.2
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
MODPY_PYBUILD =		setuptools_scm

CFLAGS +=		-I${LOCALBASE}/include
BUILD_DEPENDS =		sysutils/py-expandvars \
			lang/cython
LIB_DEPENDS =		security/libssh

TEST_DEPENDS =		devel/py-test-cov
# XXX needs fixing to find newly built extension
NO_TEST =		Yes

.include <bsd.port.mk>
