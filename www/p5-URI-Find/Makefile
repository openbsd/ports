# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:22 naddy Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		URI-Find-0.16
REVISION=		1
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
