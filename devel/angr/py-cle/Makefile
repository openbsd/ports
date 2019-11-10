# $OpenBSD: Makefile,v 1.2 2019/11/10 10:01:56 kn Exp $

COMMENT =		CLE loads binaries and their associated libraries
REVISION =		0

ANGR_PYTHON_MODULE =	cle

RUN_DEPENDS =		devel/angr/py-archinfo>=${MODPY_EGG_VERSION} \
			devel/angr/py-claripy>=${MODPY_EGG_VERSION} \
			devel/angr/py-pyvex>=${MODPY_EGG_VERSION} \
			devel/py-elftools${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			security/py-pefile${MODPY_FLAVOR}

DOCDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}${ANGR_PYTHON_MODULE}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
