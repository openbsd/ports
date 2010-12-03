# $OpenBSD: Makefile,v 1.22 2010/12/03 11:46:51 ajacoutot Exp $

COMMENT=	object oriented interface for CGI script applications

MODULES=	cpan
DISTNAME=	CGI-XMLApplication-1.1.3
REVISION=	1
CATEGORIES=    	www
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXML>=1.10 \
		textproc/p5-XML-LibXSLT>=1.08
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
