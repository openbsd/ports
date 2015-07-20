# $OpenBSD: Makefile,v 1.8 2015/07/20 00:33:13 jca Exp $

COMMENT =		serial interface class for Python

MODPY_EGG_VERSION =	2.7
DISTNAME =		pyserial-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		devel

HOMEPAGE =		http://pyserial.sourceforge.net/

MAINTAINER =		Daniel Winters <daniel@tydirium.org>

# Python license
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

DOCSDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}serial
EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}serial

post-install:
	cd ${PREFIX}/bin/ && mv miniterm.py miniterm-${MODPY_VERSION}.py
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRKSRC}/LICENSE.txt ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/*.rst ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

# NOTE: tests require a serial setup; see ${WRKSRC}/examples/test.py
# for more information
do-test:
	cd ${WRKSRC} && \
	for _test in ${WRKSRC}/examples/test*; do \
		PYTHONPATH=. ${MODPY_BIN} $${_test}; \
	done
.for _test in ${WRKSRC}/examples/test*
	cd ${WRKSRC} && ${MODPY_BIN} ${_test}
.endfor

.include <bsd.port.mk>
