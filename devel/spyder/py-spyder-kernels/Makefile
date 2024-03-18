COMMENT=		kernels used by spyder on its ipython console

MODPY_EGG_VERSION=	2.5.1
DISTNAME=		spyder-kernels-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}${DISTNAME}

PORTROACH=		limit:^2

HOMEPAGE=		https://github.com/spyder-ide/spyder-kernels

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-cloudpickle${MODPY_FLAVOR} \
		devel/ipython${MODPY_FLAVOR}>=8.13.0 \
		devel/py-ipykernel${MODPY_FLAVOR}>=6.29.3,<7 \
		devel/py-jupyter_client${MODPY_FLAVOR}>=7.4.9 \
		devel/py-wurlitzer${MODPY_FLAVOR}>=1.0.3 \
		net/py-zmq${MODPY_FLAVOR}>=24.0.0

NO_TEST =	Yes

.include <bsd.port.mk>
