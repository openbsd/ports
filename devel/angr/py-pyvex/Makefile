COMMENT =		Python interface to libVEX and VEX IR
REVISION =		1

ANGR_PYTHON_MODULE =	pyvex

USE_GMAKE =		Yes
CFLAGS +=		-shared -fPIC -I${LOCALBASE}/include/angr-vex/

MODPY_PYTEST =		Yes

BUILD_DEPENDS +=	devel/angr/vex>=9.2 \
			devel/py-cffi \
			devel/py-cparser

# dlopen(3)s libpyvex.so
RUN_DEPENDS +=		devel/angr/vex>=9.2 \
			devel/py-cffi \
			devel/py-cparser \
			devel/angr/py-archinfo>=${MODPY_DISTV} \
			devel/py-bitstring \
			devel/py-future
TEST_DEPENDS =		${RUN_DEPENDS}

DOCDIR =		${PREFIX}/share/doc/py-${ANGR_PYTHON_MODULE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyvex_c/Makefile ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
