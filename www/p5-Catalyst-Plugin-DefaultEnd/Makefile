# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:57 sthen Exp $

COMMENT=		sensible default end action (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.08
CATEGORIES=		www devel
REVISION =		1

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
