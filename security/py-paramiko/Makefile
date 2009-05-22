# $OpenBSD: Makefile,v 1.18 2009/05/22 12:29:19 benoit Exp $

COMMENT=	Python module that implements the SSH2 protocol

MODPY_EGG_VERSION=	1.7.4
DISTNAME=		paramiko-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		security

HOMEPAGE=		http://www.lag.net/paramiko/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

RUN_DEPENDS=	::security/py-crypto

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-paramiko
EXAMPLESDIR=	${PREFIX}/share/examples/py-paramiko

pre-build:
	@perl -pi -e "s,^\#\!/usr/bin/env python,#!${MODPY_BIN}," ${WRKSRC}/demos/*.py
        
post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/demos
	${INSTALL_DATA} ${WRKSRC}/demos/* ${EXAMPLESDIR}/demos

.include <bsd.port.mk>
