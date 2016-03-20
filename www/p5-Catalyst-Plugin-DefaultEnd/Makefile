# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:15 naddy Exp $

COMMENT=		sensible default end action (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.08
CATEGORIES=		www devel
REVISION =		0

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
