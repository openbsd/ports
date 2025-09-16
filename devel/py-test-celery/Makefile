COMMENT =		pytest plugin for Celery

MODPY_DISTV =		1.2.1
DISTNAME =		pytest_celery-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/pytest_/py-test-/}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

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

TEST_DEPENDS =		devel/py-test-cov

.include <bsd.port.mk>
