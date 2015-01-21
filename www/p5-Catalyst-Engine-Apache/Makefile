# $OpenBSD: Makefile,v 1.13 2015/01/21 14:42:32 sthen Exp $

COMMENT=	Catalyst Apache engine

MODULES=	cpan
DISTNAME=	Catalyst-Engine-Apache-1.16
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		mod_perl-*|ap2-mod_perl-*:www/mod_perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
