UNIT_MODNAME=   python${MODPY_VERSION}
UNIT_SHORTNAME=	python

REVISION=	0

MODULES+=	lang/python
CONFIGURE_ENV+=	PYTHON_CONFIG=${MODPY_BIN}-config

WANTLIB=	${MODPY_WANTLIB} intl m pthread util
LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

post-configure:
	cd ${WRKSRC} && ./configure python --config=${MODPY_BIN}-config

.include <bsd.port.mk>
