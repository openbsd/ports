# $OpenBSD: Makefile,v 1.42 2015/01/21 14:41:38 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

DISTNAME=	XML-LibXML-1.69
EPOCH=		0

REVISION=	3

CATEGORIES=	textproc

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m xml2 z

MODULES=	converters/libiconv \
		cpan

LIB_DEPENDS=	textproc/libxml
RUN_DEPENDS=	textproc/p5-LibXML-Common \
		textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
