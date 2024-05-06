COMMENT=	module wrapper for os.path

MODPY_EGG_VERSION=	16.10.0
DISTNAME=	path-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/path

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST=	Yes

TEST_DEPENDS=	devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-more-itertools${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
