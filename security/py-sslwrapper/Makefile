# $OpenBSD: Makefile,v 1.24 2011/07/07 17:16:18 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL Wrappers for Python

MODPY_EGG_VERSION=0.6.1
DISTNAME=	POW-${MODPY_EGG_VERSION}
PKGNAME=	py-sslwrapper-${MODPY_EGG_VERSION}
REVISION=	6
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pow/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

MODULES=	lang/python

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{setup.py,POW.c}

.include <bsd.port.mk>
