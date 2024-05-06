COMMENT=	very basic event publishing system from Zope

MODPY_EGG_VERSION=	4.5.0

DISTNAME=	zope.event-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeevent-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	1

# Zope Public License
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= src/zope/event/tests.py
TEST_ENV=	PY_IGNORE_IMPORTMISMATCH=1

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
