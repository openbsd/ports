COMMENT =		pytest plugin for Celery

MODPY_DISTV =		1.3.0
DISTNAME =		pytest_celery-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/pytest_/py-test-/}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		devel/py-debugpy \
			devel/py-tenacity \
			devel/py-test-docker-tools \
			net/py-kombu \
			sysutils/py-celery \
			sysutils/py-psutil

NO_TEST =		Yes

.include <bsd.port.mk>
