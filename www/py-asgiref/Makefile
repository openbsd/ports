COMMENT =		ASGI specification and utilities

MODPY_EGG_VERSION =	3.8.1

DISTNAME =		asgiref-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www

HOMEPAGE =		https://github.com/django/asgiref

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-typing-extensions${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR}

.include <bsd.port.mk>
