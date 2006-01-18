# $OpenBSD: Makefile,v 1.15 2006/01/18 07:45:21 steven Exp $

COMMENT=	"object oriented interface for CGI script applications"

VERSION=	1.1.3
DISTNAME=	CGI-XMLApplication-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=    	www perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

RUN_DEPENDS=	:p5-XML-LibXML->=1.10:textproc/p5-XML-LibXML \
		:p5-XML-LibXSLT->=1.08:textproc/p5-XML-LibXSLT
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

PKG_ARCH=	*
.include <bsd.port.mk>
