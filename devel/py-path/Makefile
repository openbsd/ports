COMMENT=	module wrapper for os.path

MODPY_DISTV=	17.1.0
DISTNAME=	path-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/path

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-appdirs \
		devel/py-more-itertools

.include <bsd.port.mk>
