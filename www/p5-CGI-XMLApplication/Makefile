# $OpenBSD: Makefile,v 1.25 2014/09/08 17:04:51 jasper Exp $

COMMENT=	object oriented interface for CGI script applications

MODULES=	cpan
DISTNAME=	CGI-XMLApplication-1.1.3
REVISION=	2
CATEGORIES=    	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.10 \
		textproc/p5-XML-LibXSLT>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
