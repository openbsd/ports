# $OpenBSD: Makefile,v 1.2 2007/01/14 20:49:06 simon Exp $

COMMENT=	"perform and manipulate nmap scans using Perl"

MODULES=	cpan
DISTNAME=	Nmap-Scanner-0.9
CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::www/p5-HTML-Parser \
		::net/nmap

.include <bsd.port.mk>	
