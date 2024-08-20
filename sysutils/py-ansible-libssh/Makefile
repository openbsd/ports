MODPY_EGG_VERSION =	1.2.2
COMMENT =		Python bindings for libssh specific to Ansible use case
DISTNAME =		ansible-pylibssh-${MODPY_EGG_VERSION}
PKGNAME =		py-ansible-libssh-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils

MAINTAINER =		Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ssh

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

CFLAGS +=		-I${LOCALBASE}/include
BUILD_DEPENDS =		sysutils/py-expandvars${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR}
LIB_DEPENDS =		security/libssh

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}
# XXX needs fixing to find newly built extension
NO_TEST =		Yes

.include <bsd.port.mk>
