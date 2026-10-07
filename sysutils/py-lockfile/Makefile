COMMENT=	deprecated platform-independent file locking for Python

MODPY_DISTV=	0.12.2
DISTNAME=	lockfile-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	13

CATEGORIES=	sysutils

HOMEPAGE=	https://launchpad.net/pylockfile

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	pbr
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-pbr
TEST_DEPENDS=	textproc/py-sphinx

# hack to override PYTEST_DEBUG_TEMPROOT from python.port.mk; a sqlite
# test requires that /tmp is the same filesystem as PYTEST_DEBUG_TEMPROOT
MODPY_TEST_LOCALE= LC_CTYPE=en_US.UTF-8 \
		PYTEST_DEBUG_TEMPROOT=/tmp

.include <bsd.port.mk>
