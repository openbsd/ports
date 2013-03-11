# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:26 espie Exp $

COMMENT =		serial interface class for Python

MODPY_EGG_VERSION =	2.4
DISTNAME =		pyserial-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		http://pyserial.wiki.sourceforge.net/pySerial

MAINTAINER =		Daniel Gruber <daniel@tydirium.org>

# Python license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyserial/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

DOCSDIR =		${PREFIX}/share/doc/py-serial
EXAMPLESDIR =		${PREFIX}/share/examples/py-serial

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRKSRC}/LICENSE.txt ${DOCSDIR}
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
