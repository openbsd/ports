# $OpenBSD: Makefile,v 1.1.1.1 2006/05/05 21:22:40 msf Exp $

COMMENT=	"perl module for parsing nmap XML reports"

DISTNAME=	Nmap-Parser-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

HOMEPAGE=       http://npx.sourceforge.net/
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Nmap/} 

BUILD_DEPENDS=	${RUN_DEPENDS} 
RUN_DEPENDS=	::net/nmap \
		:p5-XML-Twig->=3.16:textproc/p5-XML-Twig

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
