# $OpenBSD: Makefile,v 1.11 2021/11/02 00:00:23 sthen Exp $

COMMENT =		Python interface to libVEX and VEX IR
REVISION =		0

ANGR_PYTHON_MODULE =	pyvex

USE_GMAKE =		Yes
CFLAGS +=		-shared -fPIC -I${LOCALBASE}/include/angr-vex/

MODPY_PYTEST =		Yes

BUILD_DEPENDS +=	devel/angr/vex>=9.0 \
			devel/py-cffi${MODPY_FLAVOR} \
			devel/py-cparser${MODPY_FLAVOR} \

# dlopen(3)s libpyvex.so
RUN_DEPENDS +=		devel/angr/vex>=9.0 \
			devel/py-cffi${MODPY_FLAVOR} \
			devel/py-cparser${MODPY_FLAVOR} \
			devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
			devel/py-bitstring${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

DOCDIR =		${PREFIX}/share/doc/py-${ANGR_PYTHON_MODULE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyvex_c/Makefile ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
