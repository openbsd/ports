# $OpenBSD: Makefile,v 1.14 2009/05/23 15:07:22 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	Python Cryptographic Toolkit

MODPY_EGG_VERSION= 0.9
DISTNAME=	cryptkit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}p4
CATEGORIES=    	security devel

HOMEPAGE=	http://sourceforge.net/projects/cryptkit/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptkit/}

MODULES=	lang/python

NO_REGRESS=	Yes

.include <bsd.port.mk>
