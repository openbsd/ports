# $OpenBSD: Makefile,v 1.10 2013/10/11 23:51:32 naddy Exp $

COMMENT=		universal forwarder for catalyst applications

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Pluggable-0.04
REVISION=		1
CATEGORIES=		www devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
