COMMENT=	backport of pathlib-compatible object wrapper for zip files

MODPY_DISTV=	3.21.0
DISTNAME=	zipp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/zipp

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

# tests also need jaraco.itertools (not ported)
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-jaraco-functools \
		devel/py-more-itertools

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

.include <bsd.port.mk>
