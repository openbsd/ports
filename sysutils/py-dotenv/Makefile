COMMENT=	handle .env files

MODPY_EGG_VERSION=	1.0.1

DISTNAME=	python-dotenv-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/theskumar/python-dotenv

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-sh${MODPY_FLAVOR} \
		devel/ipython${MODPY_FLAVOR}
# test_ipython.py clears the environment so ipython looks up the actual
# home directory of the user running it, resulting in "'/nonexistent' is
# not a writable location" warning when run as _pbuild.

.include <bsd.port.mk>
