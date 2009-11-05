# $OpenBSD: Makefile,v 1.21 2009/11/05 07:19:21 benoit Exp $

COMMENT = 	Python module that implements the SSH2 protocol

MODPY_EGG_VERSION = 	1.7.6
DISTNAME = 		paramiko-${MODPY_EGG_VERSION}
PKGNAME = 		py-${DISTNAME}
CATEGORIES = 		security

HOMEPAGE = 		http://www.lag.net/paramiko/

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = 	Yes

MASTER_SITES = 	${HOMEPAGE}download/

MODULES = 	lang/python

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS = 	::security/py-crypto
REGRESS_DEPENDS = ${RUN_DEPENDS}

pre-build:
	@perl -pi -e "s,^\#\!/usr/bin/env python,#!${MODPY_BIN}," \
	  ${WRKSRC}/demos/*.py
        
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-paramiko
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA} ${WRKSRC}/demos/* \
	  ${PREFIX}/share/examples/py-paramiko

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} test.py --verbose

.include <bsd.port.mk>
