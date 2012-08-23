# $OpenBSD: Makefile,v 1.38 2012/08/23 16:02:37 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

DISTNAME=	XML-LibXML-1.69
REVISION=	1
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

WANTLIB += c m z xml2>=6

MODULES=		cpan \
			converters/libiconv

.include <bsd.port.mk>
