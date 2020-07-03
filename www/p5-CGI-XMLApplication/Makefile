# $OpenBSD: Makefile,v 1.30 2020/07/03 21:45:56 sthen Exp $

COMMENT=	object oriented interface for CGI script applications

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	CGI-XMLApplication-1.1.5
CATEGORIES=    	www
REVISION =	0

# GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.10 \
		textproc/p5-XML-LibXSLT>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
