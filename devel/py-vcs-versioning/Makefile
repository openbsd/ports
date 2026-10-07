COMMENT=	manage your versions by vcs metadata

MODPY_DISTV=	2.5.0
DISTNAME=	vcs_versioning-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pypa/setuptools-scm/tree/main/vcs-versioning

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-setuptools \
		sysutils/py-packaging
BUILD_DEPENDS=	${RUN_DEPENDS}

# some tests need network
TEST_DEPENDS=	devel/py-test-timeout \
		devel/py-test-xdist \
		devel/mercurial \
		devel/jujutsu \
		security/gnupg

.include <bsd.port.mk>
