# $OpenBSD: Makefile,v 1.10 2015/01/21 14:43:33 sthen Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
DISTNAME=		URI-Find-0.16
REVISION=		1
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
