# $OpenBSD: Makefile,v 1.8 2010/10/18 18:36:55 espie Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
DISTNAME=	Nmap-Scanner-1.0
REVISION=	1
CATEGORIES=	net
USE_GROFF =	Yes

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
