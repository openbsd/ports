# $OpenBSD: Makefile,v 1.14 2015/11/05 19:09:00 jca Exp $

COMMENT=	Catalyst Apache engine

MODULES=	cpan
DISTNAME=	Catalyst-Engine-Apache-1.16
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		mod_perl-*|ap2-mod_perl-*:www/mod_perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
