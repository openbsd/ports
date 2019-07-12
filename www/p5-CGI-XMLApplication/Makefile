# $OpenBSD: Makefile,v 1.29 2019/07/12 20:50:50 sthen Exp $

COMMENT=	object oriented interface for CGI script applications

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	CGI-XMLApplication-1.1.5
CATEGORIES=    	www

# GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.10 \
		textproc/p5-XML-LibXSLT>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
