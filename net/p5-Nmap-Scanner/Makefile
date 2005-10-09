# $OpenBSD: Makefile,v 1.1.1.1 2005/10/09 11:33:47 alek Exp $

COMMENT=	"perform and manipulate nmap scans using Perl"

DISTNAME=	Nmap-Scanner-0.9
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Nmap/}

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::www/p5-HTML-Parser \
		::net/nmap
REGRESS_DEPENDS=${RUN_DEPENDS} 

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>	
