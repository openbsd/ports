COMMENT=		kernels used by spyder on its ipython console

MODPY_DISTV=	3.1.0
DISTNAME=	spyder_kernels-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME:S/_/-/}

PORTROACH=	limit:^3

HOMEPAGE=	https://github.com/spyder-ide/spyder-kernels

RUN_DEPENDS =	devel/py-cloudpickle \
		devel/ipython>=8.15.0,<10 \
		devel/py-ipykernel>=6.29.3,<7 \
		devel/py-jupyter_client>=7.4.9,<9 \
		devel/py-traitlets>=5.14.3 \
		devel/py-wurlitzer>=1.0.3 \
		net/py-zmq>=24v0

NO_TEST =	Yes

pre-configure:
	find ${WRKSRC} -name "*.py" -type f \
		-exec sed -i -e "s,'linux','openbsd',g" {} +

.include <bsd.port.mk>
