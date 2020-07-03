# $OpenBSD: Makefile,v 1.8 2020/07/03 21:46:00 sthen Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Quoted-0.04
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
