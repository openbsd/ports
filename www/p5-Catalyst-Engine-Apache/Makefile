# $OpenBSD: Makefile,v 1.17 2019/07/12 20:50:51 sthen Exp $

COMMENT=	Catalyst Apache engine

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Engine-Apache-1.16
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/ap2-mod_perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
