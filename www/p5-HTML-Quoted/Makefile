# $OpenBSD: Makefile,v 1.3 2013/03/11 11:44:45 espie Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
DISTNAME=	HTML-Quoted-0.03
REVISION=	0

CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
