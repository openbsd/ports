# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:52 sthen Exp $

COMMENT=		singleton for the catalyst context (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-Singleton-0.02
REVISION =		2
CATEGORIES=		www

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
