COMMENT=	disk and file backed persistent cache

CATEGORIES=	sysutils devel

MODPY_DISTV=	5.6.3
DISTNAME=	diskcache-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# tests depend on django
NO_TEST=	Yes
#TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
#		devel/py-tox

.include <bsd.port.mk>
