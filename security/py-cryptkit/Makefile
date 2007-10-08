# $OpenBSD: Makefile,v 1.12 2007/10/08 08:22:42 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	Python Cryptographic Toolkit

DISTNAME=	cryptkit-0.9
PKGNAME=	py-${DISTNAME}p1
CATEGORIES=    	security devel

HOMEPAGE=	http://eevolved.com/cryptkit/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptkit/}

MODULES=	lang/python

NO_REGRESS=	Yes

.include <bsd.port.mk>
