# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:51 sthen Exp $

COMMENT=		universal forwarder for catalyst applications

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-Pluggable-0.04
REVISION =		2
CATEGORIES=		www devel

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
