# $OpenBSD: Makefile,v 1.26 2007/01/21 21:46:21 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"fast XSLT module for perl"

MODULES=	cpan
VERSION=	1.61
DISTNAME=	XML-LibXSLT-${VERSION}
CATEGORIES=	textproc

HOMEPAGE=	http://www.axkit.org/

RUN_DEPENDS=	:p5-XML-LibXML->=1.60:textproc/p5-XML-LibXML
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	xml2.>=6::textproc/libxml \
		xslt.>=1,exslt.>=7::textproc/libxslt

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv m z 

.include <bsd.port.mk>
