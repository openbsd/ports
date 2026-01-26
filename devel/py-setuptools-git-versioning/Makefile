COMMENT=	use git repo data to build a version number

MODPY_DISTV=	3.0.1
DISTNAME=	setuptools_git_versioning-${MODPY_DISTV}
PKGNAME=	py-setuptools-git-versioning-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/dolfinus/setuptools-git-versioning
HOMEPAGE=	https://setuptools-git-versioning.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-setuptools \
		sysutils/py-packaging

# not in sdist
NO_TEST=	Yes

.include <bsd.port.mk>
