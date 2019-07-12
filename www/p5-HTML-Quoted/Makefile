# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:54 sthen Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Quoted-0.04
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
