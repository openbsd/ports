COMMENT=	plugin to manage your versions by scm tags

MODPY_DISTV=	8.1.0
DISTNAME=	setuptools_scm-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-setuptools \
		sysutils/py-packaging
BUILD_DEPENDS=	${RUN_DEPENDS}

# some tests need network
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/git \
		devel/mercurial \
		devel/py-pip

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
