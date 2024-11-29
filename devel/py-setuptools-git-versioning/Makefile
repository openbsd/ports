COMMENT=	use git repo data to build a version number

# zigpy wants <2
MODPY_EGG_VERSION=	1.13.6
DISTNAME=	setuptools-git-versioning-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/dolfinus/setuptools-git-versioning
HOMEPAGE=	https://setuptools-git-versioning.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-setuptools${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

# not in sdist
NO_TEST=	Yes

.include <bsd.port.mk>
