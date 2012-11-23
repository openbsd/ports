# $OpenBSD: Makefile,v 1.39 2012/11/23 07:47:48 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the libxml2 library

DISTNAME=	XML-LibXML-1.69
EPOCH=		0

REVISION=	2

CATEGORIES=	textproc

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m xml2 z

MODULES=	converters/libiconv \
		cpan

USE_GROFF =	Yes

LIB_DEPENDS=	textproc/libxml
RUN_DEPENDS=	textproc/p5-LibXML-Common \
		textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
