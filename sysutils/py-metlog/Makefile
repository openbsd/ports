# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:17 jasper Exp $

COMMENT =	library for mozilla services metrics logging

MODPY_EGG_VERSION = 0.9.2
DISTNAME =	metlog-py-${MODPY_EGG_VERSION}
PKGNAME =	py-metlog-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	http://pypi.python.org/pypi/metlog-py

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =	net/py-zmq devel/py-mock

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-metlog
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/py-metlog

.include <bsd.port.mk>
