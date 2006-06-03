# $OpenBSD: Makefile,v 1.10 2006/06/03 09:45:27 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python Cryptographic Toolkit"

DISTNAME=	cryptkit-0.9
PKGNAME=	py-${DISTNAME}p0
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
