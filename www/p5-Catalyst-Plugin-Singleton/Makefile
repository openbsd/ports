# $OpenBSD: Makefile,v 1.9 2014/12/10 14:51:20 benoit Exp $

COMMENT=		singleton for the catalyst context (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Singleton-0.02
REVISION =		2
CATEGORIES=		www

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
