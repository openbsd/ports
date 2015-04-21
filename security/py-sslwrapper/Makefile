# $OpenBSD: Makefile,v 1.27 2015/04/21 18:19:27 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	OpenSSL Wrappers for Python

MODPY_EGG_VERSION=0.6.1
DISTNAME=	POW-${MODPY_EGG_VERSION}
PKGNAME=	py-sslwrapper-${MODPY_EGG_VERSION}
REVISION=	8
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sourceforge.net/projects/pow/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto pthread ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

MODULES=	lang/python

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{setup.py,POW.c}

.include <bsd.port.mk>
