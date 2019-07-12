# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:34 sthen Exp $

COMMENT=	Python Cryptographic Toolkit

MODPY_EGG_VERSION= 0.9
DISTNAME=	cryptkit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	9
CATEGORIES=    	security devel

HOMEPAGE=	http://sourceforge.net/projects/cryptkit/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptkit/}


MODULES=	lang/python

NO_TEST=	Yes

.include <bsd.port.mk>
