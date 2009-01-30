# $OpenBSD: Makefile,v 1.10 2009/01/30 16:13:54 eric Exp $

COMMENT=	Python interface to the OpenSSL library

VERSION=	0.8
DISTNAME=	pyOpenSSL-${VERSION}
PKGNAME=        py-openssl-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pyopenssl/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyopenssl/}

MODULES=	lang/python

MODPY_EGG_VERSION=${VERSION}

REGRESS_DEPENDS=:py-twisted-core-*:devel/py-twisted/core

EXAMPLESDIR=	${PREFIX}/share/examples/py-openssl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple

do-regress: install
	${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD} OpenSSL.test

.include <bsd.port.mk>
