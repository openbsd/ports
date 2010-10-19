# $OpenBSD: Makefile,v 1.31 2010/10/19 07:54:25 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

MODULES=	cpan
DISTNAME=	XML-LibXML-1.69
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

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
