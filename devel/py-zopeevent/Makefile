COMMENT=	very basic event publishing system from Zope

MODPY_DISTV=	5.0
DISTNAME=	zope.event-${MODPY_DISTV}
PKGNAME=	py-zopeevent-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/zopefoundation/zope.event

# Zope Public License
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# really wants to use zope.testrunner
TEST_ENV=	PY_IGNORE_IMPORTMISMATCH=1
MODPY_PYTEST_ARGS= src/zope/event/tests.py

.include <bsd.port.mk>
