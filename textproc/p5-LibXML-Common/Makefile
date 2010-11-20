# $OpenBSD: Makefile,v 1.14 2010/11/20 19:56:49 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface for several perl XML modules

MODULES=	cpan
DISTNAME=	XML-LibXML-Common-0.13
REVISION=	2
CATEGORIES=	textproc
USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z  xml2>=7

.include <bsd.port.mk>
