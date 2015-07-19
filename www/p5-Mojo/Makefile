# $OpenBSD: Makefile,v 1.21 2015/07/19 06:38:15 ajacoutot Exp $

COMMENT =	next generation web framework for Perl

MODULES =	cpan
DISTNAME =	Mojolicious-6.14
CATEGORIES =	www

MAINTAINER =	Mark Patruck <mark@wrapped.cx>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

HOMEPAGE =	http://mojolicio.us/

CPAN_AUTHOR =	SRI

RUN_DEPENDS =	devel/p5-EV \
		security/p5-IO-Socket-SSL>=1.94

MAKE_ENV += TEST_CACHING=Yes
MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_TLS=Yes

.include <bsd.port.mk>
