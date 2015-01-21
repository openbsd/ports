# $OpenBSD: Makefile,v 1.7 2015/01/21 14:42:33 sthen Exp $

COMMENT =	log Perl warnings to your Catalyst log object

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-LogWarnings-0.03
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
