# $OpenBSD: Makefile,v 1.12 2010/10/19 07:54:22 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

MODULES=	cpan
DISTNAME=	XML-LibXML-Common-0.13
REVISION=	1
CATEGORIES=	textproc
USE_GROFF =	Yes

LIB_DEPENDS=	xml2.>=7::textproc/libxml

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z 

.include <bsd.port.mk>
