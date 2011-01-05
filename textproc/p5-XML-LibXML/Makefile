# $OpenBSD: Makefile,v 1.36 2011/01/05 18:18:25 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

DISTNAME=	XML-LibXML-1.69
EPOCH=		0
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

MODULES=		cpan \
			converters/libiconv

WANTLIB=		m z xml2>=6

.include <bsd.port.mk>
