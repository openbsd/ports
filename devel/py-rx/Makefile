COMMENT=	library for asynchronous and event-based programs in Python

MODPY_DISTV=	4.1.0
DISTNAME=	reactivex-${MODPY_DISTV}
PKGNAME=	py-rx-${MODPY_DISTV}

# overlay tests
DIST_TUPLE=	github ReactiveX RxPY v${MODPY_DISTV} ../rxpy

CATEGORIES=	devel

# https://github.com/ReactiveX/RxPY
HOMEPAGE=	https://reactivex.io

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

MODPY_PYTEST_ARGS=	--ignore tests/test_scheduler/test_mainloop/test_gtkscheduler.py

RUN_DEPENDS=	devel/py-typing-extensions

pre-test:
	mv ${WRKDIR}/rxpy/tests ${WRKSRC}/

.include <bsd.port.mk>
