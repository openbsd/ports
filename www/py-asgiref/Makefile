COMMENT =		ASGI specification and utilities

MODPY_DISTV =	3.8.1

DISTNAME =		asgiref-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		0

HOMEPAGE =		https://github.com/django/asgiref

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-typing-extensions
TEST_DEPENDS =		devel/py-mypy \
			devel/py-test-asyncio

.include <bsd.port.mk>
