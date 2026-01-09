COMMENT=	Scikit's PEP517 build backend

MODPY_DISTV=	0.11.6
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
		sysutils/py-packaging

TEST_ENV=	HOME=${WRKBUILD}
TEST_DEPENDS=	devel/py-cattrs \
		devel/py-pip \
		devel/py-virtualenv

.include <bsd.port.mk>
