COMMENT=		kernels used by spyder on its ipython console

MODPY_DISTV=	2.5.2
DISTNAME=		spyder_kernels-${MODPY_DISTV}
PKGNAME=		${MODPY_PY_PREFIX}${DISTNAME:S/_/-/}
REVISION=		0

PORTROACH=		limit:^2

HOMEPAGE=		https://github.com/spyder-ide/spyder-kernels

RUN_DEPENDS =	devel/py-cloudpickle \
		devel/ipython>=8.13.0 \
		devel/py-ipykernel>=6.29.3,<7 \
		devel/py-jupyter_client>=7.4.9 \
		devel/py-wurlitzer>=1.0.3 \
		net/py-zmq>=24.0.0

NO_TEST =	Yes

.include <bsd.port.mk>
