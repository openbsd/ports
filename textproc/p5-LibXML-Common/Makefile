# $OpenBSD: Makefile,v 1.8 2007/09/15 20:59:39 merdely Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

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
