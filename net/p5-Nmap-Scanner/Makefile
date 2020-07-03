# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:37 sthen Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Nmap-Scanner-1.0
REVISION=	5
CATEGORIES=	net
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		devel/p5-Class-Generate \
		www/p5-HTML-Parser \
		www/p5-libwww \
		net/nmap

.include <bsd.port.mk>	
