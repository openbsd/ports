# $OpenBSD: Makefile,v 1.23 2011/06/08 17:43:20 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL Wrappers for Python

VERSION=	0.6.1
DISTNAME=	POW-${VERSION}
PKGNAME=	py-sslwrapper-${VERSION}
REVISION=	5
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pow/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

MODULES=	lang/python

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{setup.py,POW.c}

.include <bsd.port.mk>
