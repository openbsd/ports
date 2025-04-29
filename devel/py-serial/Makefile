COMMENT =		serial interface class for Python

MODPY_DISTV =		3.5
DISTNAME =		pyserial-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pyserial/pyserial

MAINTAINER =		Daniel Winters <daniel@tydirium.org>

# Python license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	-k 'not test_pty_serial_write and not test_pty_serial_read'

DOCSDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}serial
EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}serial

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} README.rst LICENSE.txt \
		documentation/*.rst ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
