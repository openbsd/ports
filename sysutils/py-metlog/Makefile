# $OpenBSD: Makefile,v 1.1.1.1 2012/07/17 19:27:34 landry Exp $

COMMENT =	library for mozilla services metrics logging

MODPY_EGG_VERSION = 0.9.2
DISTNAME =	metlog-py-${MODPY_EGG_VERSION}
PKGNAME =	py-metlog-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	http://pypi.python.org/pypi/metlog-py

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=m/metlog-py/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
REGRESS_DEPENDS =	net/py-zmq devel/py-mock

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-metlog
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/py-metlog

.include <bsd.port.mk>
