# $OpenBSD: Makefile,v 1.17 2019/07/12 21:02:24 sthen Exp $

COMMENT=	perform and manipulate nmap scans using Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Nmap-Scanner-1.0
REVISION=	4
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
