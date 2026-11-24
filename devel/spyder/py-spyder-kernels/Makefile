COMMENT=	kernels used by spyder on its IPython console

MODULES=	lang/python
MODPY_DISTV=	3.1.7
DISTNAME=	spyder_kernels-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME:S/_/-/}

HOMEPAGE=	https://github.com/spyder-ide/spyder-kernels

RUN_DEPENDS =	devel/py-cloudpickle \
		devel/ipython<10 \
		devel/py-ipykernel<7.3.0 \
		devel/py-jupyter_client<9 \
		devel/py-traitlets \
		devel/py-wurlitzer \
		net/py-zmq

NO_TEST =	Yes

pre-configure:
	find ${WRKSRC} -name "*.py" -type f \
		-exec sed -i -e "s,'linux','openbsd',g" {} +

.include <bsd.port.mk>
