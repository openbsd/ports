COMMENT=	plugin to manage your versions by scm tags

MODPY_DISTV=	10.3.4
DISTNAME=	setuptools_scm-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD=	other

RUN_DEPENDS=	devel/py-setuptools \
		sysutils/py-packaging \
		devel/py-vcs-versioning<3
BUILD_DEPENDS=	${RUN_DEPENDS}

# some tests need network (the test that fails with an error about lz4
# is specifically to trying to fetch it, not a missing dep)
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/git \
		devel/mercurial \
		devel/py-pip \
		devel/py-test-timeout

.include <bsd.port.mk>
