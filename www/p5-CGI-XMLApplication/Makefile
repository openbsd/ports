# $OpenBSD: Makefile,v 1.12 2003/10/18 19:44:51 sturm Exp $

COMMENT=	"object oriented interface for CGI script applications"

VERSION=	1.1.1
DISTNAME=	CGI-XMLApplication-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=    	www perl5

MAINTAINER=	Shell Hung <shell@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

BUILD_DEPENDS=	:p5-XML-LibXSLT->=1.08:textproc/p5-XML-LibXSLT
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
