# $OpenBSD: Makefile,v 1.6 2017/12/07 13:12:44 espie Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Quoted-0.04
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
