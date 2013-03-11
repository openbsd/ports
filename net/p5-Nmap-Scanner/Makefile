# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:53 espie Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
DISTNAME=	Nmap-Scanner-1.0
REVISION=	3
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		devel/p5-Class-Generate \
		www/p5-HTML-Parser \
		www/p5-libwww \
		net/nmap

.include <bsd.port.mk>	
