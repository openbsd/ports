# $OpenBSD: Makefile,v 1.13 2014/09/08 17:04:51 jasper Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
DISTNAME=	Nmap-Scanner-1.0
REVISION=	4
CATEGORIES=	net
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		devel/p5-Class-Generate \
		www/p5-HTML-Parser \
		www/p5-libwww \
		net/nmap

.include <bsd.port.mk>	
