COMMENT=	editable interval tree data structure for Python 2 and 3

MODPY_EGG_VERSION=	3.1.0
DISTNAME=	intervaltree-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	3

CATEGORIES=	devel

HOMEPAGE=	https://github.com/chaimleib/intervaltree

# Apache v2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-sortedcontainers${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

# "test" directory is missing from the tarball, exists only in repository
# could run the regress tests by copying the directory in WRKSRC
NO_TEST=	Yes

.include <bsd.port.mk>
