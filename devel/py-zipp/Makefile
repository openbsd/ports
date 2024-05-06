COMMENT=		backport of pathlib-compatible object wrapper for zip files

MODPY_EGG_VERSION=	3.15.0
DISTNAME=		zipp-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jaraco/zipp

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

# tests also need jaraco.itertools (not ported)
TEST_DEPENDS=		devel/py-jaraco-functools${MODPY_FLAVOR} \
			devel/py-more-itertools${MODPY_FLAVOR}

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools_scm

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
