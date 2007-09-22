# $OpenBSD: Makefile,v 1.25 2007/09/22 10:38:11 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

MODULES=	cpan
DISTNAME=	XML-LibXML-1.64
CATEGORIES=	textproc

LIB_DEPENDS=	xml2.>=6::textproc/libxml
RUN_DEPENDS=	::textproc/p5-LibXML-Common \
		:p5-XML-SAX-*:textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z 

.include <bsd.port.mk>
