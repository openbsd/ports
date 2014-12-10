# $OpenBSD: Makefile,v 1.11 2014/12/10 14:51:20 benoit Exp $

COMMENT=		sensible default end action (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.08
CATEGORIES=		www devel
REVISION =		0

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
