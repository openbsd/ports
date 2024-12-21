COMMENT =		CLE loads binaries and their associated libraries
REVISION =		1

ANGR_PYTHON_MODULE =	cle

RUN_DEPENDS =		devel/angr/py-archinfo>=${MODPY_DISTV} \
			devel/angr/py-claripy>=${MODPY_DISTV} \
			devel/angr/py-pyvex>=${MODPY_DISTV} \
			devel/py-elftools \
			devel/py-minidump \
			devel/py-sortedcontainers \
			security/py-pefile

DOCDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}${ANGR_PYTHON_MODULE}

# Requires angr/binaries to be downloaded.
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
