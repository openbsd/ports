# $OpenBSD: Makefile,v 1.2 2007/01/14 20:49:06 simon Exp $

COMMENT=	"perl module for parsing nmap XML reports"

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.05
CATEGORIES=	net

HOMEPAGE=       http://npx.sourceforge.net/
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS} 
RUN_DEPENDS=	::net/nmap \
		:p5-XML-Twig->=3.16:textproc/p5-XML-Twig

.include <bsd.port.mk>
