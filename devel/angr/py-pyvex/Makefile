# $OpenBSD: Makefile,v 1.1.1.1 2019/07/23 19:22:21 jasper Exp $

COMMENT =		Python interface to libVEX and VEX IR

ANGR_PYTHON_MODULE =	pyvex

USE_GMAKE =		Yes
CFLAGS +=		-shared -fPIC -I${LOCALBASE}/include/angr-vex/

MODPY_TEST =		Yes

BUILD_DEPENDS +=	devel/angr/vex \
			devel/py-cffi${MODPY_FLAVOR} \
			devel/py-cparser${MODPY_FLAVOR} \

RUN_DEPENDS +=		devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
			devel/py-bitstring${MODPY_FLAVOR} \
			devel/py-cffi${MODPY_FLAVOR} \
			devel/py-cparser${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

DOCDIR =		${PREFIX}/share/doc/py-${ANGR_PYTHON_MODULE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyvex_c/Makefile ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
