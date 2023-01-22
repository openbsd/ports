COMMENT=	handle .env files

MODPY_EGG_VERSION=	0.21.1

DISTNAME=	python-dotenv-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/python-/py-/}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/theskumar/python-dotenv

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-sh${MODPY_FLAVOR} \
		devel/ipython${MODPY_FLAVOR}

.include <bsd.port.mk>
