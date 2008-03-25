# $OpenBSD: Makefile,v 1.8 2008/03/25 22:20:09 eric Exp $

COMMENT=	Python interface to the OpenSSL library

VERSION=	0.6
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
SUBST_VARS=	VERSION

EXAMPLESDIR=	${PREFIX}/share/examples/py-openssl

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple

.include <bsd.port.mk>
