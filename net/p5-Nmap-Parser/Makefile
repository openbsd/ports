# $OpenBSD: Makefile,v 1.14 2013/08/07 21:32:20 naddy Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.2
EPOCH=		0
REVISION=	2
CATEGORIES=	net

HOMEPAGE=       https://nmap-parser.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
