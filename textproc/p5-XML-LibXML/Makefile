# $OpenBSD: Makefile,v 1.33 2010/11/20 19:56:50 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

MODULES=	cpan
DISTNAME=	XML-LibXML-1.69
REVISION=	1
CATEGORIES=	textproc
USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml
RUN_DEPENDS=	textproc/p5-LibXML-Common \
		textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		iconv m z xml2>=6

.include <bsd.port.mk>
