COMMENT =	library for asynchronous and event-based programs in Python

MODPY_EGG_VERSION =	4.0.4
GH_ACCOUNT =		ReactiveX
GH_PROJECT =		RxPY
GH_TAGNAME =		v${MODPY_EGG_VERSION}
PKGNAME =		py-rx-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =	devel

HOMEPAGE =	https://reactivex.io

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		poetry-core

MODPY_PYTEST_ARGS =	--ignore tests/test_scheduler/test_mainloop/test_gtkscheduler.py

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.mk>
