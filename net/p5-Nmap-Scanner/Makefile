# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:56 naddy Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Nmap-Scanner-1.0
REVISION=	4
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		devel/p5-Class-Generate \
		www/p5-HTML-Parser \
		www/p5-libwww \
		net/nmap

.include <bsd.port.mk>	
