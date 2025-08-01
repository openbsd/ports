COMMENT=	module wrapper for os.path

MODPY_DISTV=	17.1.1
DISTNAME=	path-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/path

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	misc/py-coherent.licensed
TEST_DEPENDS=	devel/py-appdirs \
		devel/py-more-itertools

.include <bsd.port.mk>
