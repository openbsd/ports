# $OpenBSD: Makefile,v 1.23 2007/01/21 21:46:21 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the libxml2 library"

MODULES=	cpan
VERSION=	1.61003
DISTNAME=	XML-LibXML-${VERSION}
WRKDIST=	${WRKDIR}/XML-LibXML-1.61
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
