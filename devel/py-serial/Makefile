# $OpenBSD: Makefile,v 1.13 2020/07/03 21:12:49 sthen Exp $

COMMENT =		serial interface class for Python

MODPY_EGG_VERSION =	3.4
DISTNAME =		pyserial-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pyserial/pyserial

MAINTAINER =		Daniel Winters <daniel@tydirium.org>

# Python license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

DOCSDIR =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}serial
EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}serial

post-install:
	cd ${PREFIX}/bin/ && mv miniterm.py miniterm-${MODPY_VERSION}.py
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.rst ${WRKSRC}/LICENSE.txt ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/documentation/*.rst ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
