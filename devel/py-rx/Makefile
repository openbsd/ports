COMMENT =	library for asynchronous and event-based programs in Python

MODPY_DISTV =	4.0.4
GH_ACCOUNT =		ReactiveX
GH_PROJECT =		RxPY
GH_TAGNAME =		v${MODPY_DISTV}
PKGNAME =		py-rx-${MODPY_DISTV}
REVISION =		1

CATEGORIES =	devel

HOMEPAGE =	https://reactivex.io

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		poetry-core

MODPY_PYTEST_ARGS =	--ignore tests/test_scheduler/test_mainloop/test_gtkscheduler.py

RUN_DEPENDS =	devel/py-typing-extensions

.include <bsd.port.mk>
