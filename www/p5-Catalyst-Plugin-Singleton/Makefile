# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:45 espie Exp $

COMMENT=		singleton for the catalyst context (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Singleton-0.02
REVISION=		1
CATEGORIES=		www
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
