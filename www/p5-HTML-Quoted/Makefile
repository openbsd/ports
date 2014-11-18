# $OpenBSD: Makefile,v 1.4 2014/11/18 20:06:55 benoit Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
DISTNAME =	HTML-Quoted-0.04

CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
