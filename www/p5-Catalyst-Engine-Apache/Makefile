# $OpenBSD: Makefile,v 1.16 2016/04/28 17:03:11 sthen Exp $

COMMENT=	Catalyst Apache engine

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Engine-Apache-1.16
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/ap2-mod_perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
