# $OpenBSD: Makefile,v 1.26 2013/03/11 11:41:28 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL Wrappers for Python

MODPY_EGG_VERSION=0.6.1
DISTNAME=	POW-${MODPY_EGG_VERSION}
PKGNAME=	py-sslwrapper-${MODPY_EGG_VERSION}
REVISION=	7
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pow/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		crypto ssl ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

MODULES=	lang/python

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{setup.py,POW.c}

.include <bsd.port.mk>
