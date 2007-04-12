# $OpenBSD: Makefile,v 1.17 2007/04/12 18:59:36 jasper Exp $

COMMENT=	"object oriented interface for CGI script applications"

MODULES=	cpan
DISTNAME=	CGI-XMLApplication-1.1.3
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=    	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-LibXML->=1.10:textproc/p5-XML-LibXML \
		:p5-XML-LibXSLT->=1.08:textproc/p5-XML-LibXSLT
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
