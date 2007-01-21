# $OpenBSD: Makefile,v 1.7 2007/01/21 21:46:20 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface for several perl XML modules"

MODULES=	cpan
DISTNAME=	XML-LibXML-Common-0.13
CATEGORIES=	textproc

LIB_DEPENDS=	xml2.>=7::textproc/libxml

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z 

.include <bsd.port.mk>
