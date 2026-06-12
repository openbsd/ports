COMMENT=	Scikit's PEP517 build backend

MODPY_DISTV=	0.12.2
REVISION=	0
DISTNAME=	scikit_build_core-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/scikit-build/scikit-build-core

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs
RUN_DEPENDS=	devel/cmake/core \
		devel/ninja \
		devel/py-pathspec \
		math/py-numpy \
		sysutils/py-packaging
# looks like code should also cope if numpy is not present, but it does
# seem to fail, e.g. when building pybind11.

TEST_ENV=	HOME=${WRKBUILD}
TEST_DEPENDS=	devel/py-cattrs \
		devel/py-pip \
		devel/py-virtualenv

.include <bsd.port.mk>
