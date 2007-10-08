# $OpenBSD: Makefile,v 1.7 2007/10/08 08:22:42 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to the OpenSSL library

VERSION=	0.5.1
DISTNAME=	pyOpenSSL-${VERSION}
PKGNAME=	py-openssl-${VERSION}p1
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pyopenssl/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyopenssl/}

MODULES=	lang/python

EXAMPLESDIR=	${PREFIX}/share/examples/py-openssl

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple

.include <bsd.port.mk>
