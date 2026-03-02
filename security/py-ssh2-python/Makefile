COMMENT=	Python bindings for libssh2

MODPY_DISTV=	1.2.0.post1
GH_ACCOUNT=	ParallelSSH
GH_PROJECT=	ssh2-python
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-ssh2-python-${MODPY_DISTV:S/.post/pl/}
CATEGORIES=	security

HOMEPAGE=	https://github.com/ParallelSSH/ssh2-python

# LGPLv2.1 only
PERMIT_PACKAGE=	Yes

WANTLIB += ssh2

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

MAKE_ENV=	SYSTEM_LIBSSH2=1
BUILD_DEPENDS=	lang/cython
LIB_DEPENDS=	security/libssh2>=1.11.1
TEST_DEPENDS=	devel/py-test-rerunfailures
MODPY_TEST_LINK_SO= Yes

.include <bsd.port.mk>
