# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:58 sthen Exp $

COMMENT=		singleton for the catalyst context (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-Singleton-0.02
REVISION =		3
CATEGORIES=		www

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
