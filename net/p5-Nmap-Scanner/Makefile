# $OpenBSD: Makefile,v 1.4 2007/07/28 14:58:59 simon Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
DISTNAME=	Nmap-Scanner-1.0
CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::devel/p5-Class-Generate \
		::www/p5-HTML-Parser \
		::net/nmap

.include <bsd.port.mk>	
