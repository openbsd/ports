# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:44 espie Exp $

COMMENT=	Catalyst Apache engine

MODULES=	cpan
DISTNAME=	Catalyst-Engine-Apache-1.16
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		mod_perl-*|ap2-mod_perl-*:www/mod_perl

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
