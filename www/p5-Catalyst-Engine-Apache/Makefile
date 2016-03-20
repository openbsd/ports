# $OpenBSD: Makefile,v 1.15 2016/03/20 19:57:15 naddy Exp $

COMMENT=	Catalyst Apache engine

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Engine-Apache-1.16
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		mod_perl-*|ap2-mod_perl-*:www/mod_perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
