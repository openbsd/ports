# $OpenBSD: Makefile,v 1.26 2015/08/15 08:43:18 benoit Exp $

COMMENT=	object oriented interface for CGI script applications

MODULES=	cpan
DISTNAME =	CGI-XMLApplication-1.1.4
CATEGORIES=    	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.10 \
		textproc/p5-XML-LibXSLT>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
