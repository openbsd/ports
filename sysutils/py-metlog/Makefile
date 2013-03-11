# $OpenBSD: Makefile,v 1.2 2013/03/11 11:41:32 espie Exp $

COMMENT =	library for mozilla services metrics logging

MODPY_EGG_VERSION = 0.9.2
DISTNAME =	metlog-py-${MODPY_EGG_VERSION}
PKGNAME =	py-metlog-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	http://pypi.python.org/pypi/metlog-py

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=m/metlog-py/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =	net/py-zmq devel/py-mock

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-metlog
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/py-metlog

.include <bsd.port.mk>
