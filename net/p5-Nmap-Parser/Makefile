# $OpenBSD: Makefile,v 1.15 2014/11/15 09:50:00 benoit Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME =	Nmap-Parser-1.31
EPOCH=		0
CATEGORIES=	net

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

HOMEPAGE=       https://nmap-parser.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
