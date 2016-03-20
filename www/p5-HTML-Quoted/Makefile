# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:18 naddy Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Quoted-0.04

CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
