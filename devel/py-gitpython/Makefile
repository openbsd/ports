COMMENT=	library used to interact with Git repositories

MODPY_DISTV=	3.2.0
GH_ACCOUNT=	gitpython-developers
GH_PROJECT=	GitPython
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/gitpython-developers/GitPython
HOMEPAGE=	https://gitpython.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/git \
		devel/py-gitdb

# some tests work, others expect to be run in a git checkout
TEST_DEPENDS=	devel/py-ddt \
		devel/py-test-cov \
		devel/py-test-instafail \
		devel/py-test-mock

.include <bsd.port.mk>
