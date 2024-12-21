COMMENT=	handle .env files

MODPY_DISTV=	1.0.1

DISTNAME=	python-dotenv-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	1

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/theskumar/python-dotenv

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-click \
		devel/py-mock \
		devel/py-sh \
		devel/ipython
# test_ipython.py clears the environment so ipython looks up the actual
# home directory of the user running it, resulting in "'/nonexistent' is
# not a writable location" warning when run as _pbuild.

.include <bsd.port.mk>
