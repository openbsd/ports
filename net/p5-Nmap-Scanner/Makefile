# $OpenBSD: Makefile,v 1.5 2008/09/29 22:43:06 jasper Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
DISTNAME=	Nmap-Scanner-1.0
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::devel/p5-Class-Generate \
		::www/p5-HTML-Parser \
		::www/p5-libwww \
		::net/nmap

.include <bsd.port.mk>	
