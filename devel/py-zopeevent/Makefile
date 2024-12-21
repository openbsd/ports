COMMENT=	very basic event publishing system from Zope

MODPY_DISTV=	4.5.0

DISTNAME=	zope.event-${MODPY_DISTV}
PKGNAME=	py-zopeevent-${MODPY_DISTV}
CATEGORIES=	devel
REVISION=	2

# Zope Public License
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= src/zope/event/tests.py
TEST_ENV=	PY_IGNORE_IMPORTMISMATCH=1

.include <bsd.port.mk>
