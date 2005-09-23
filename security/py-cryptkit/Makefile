# $OpenBSD: Makefile,v 1.9 2005/09/23 19:41:44 pvalchev Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python Cryptographic Toolkit"

DISTNAME=	cryptkit-0.9
PKGNAME=	py-${DISTNAME}
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
