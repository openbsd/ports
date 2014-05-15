# $OpenBSD: Makefile,v 1.13 2014/05/15 22:30:08 bluhm Exp $

COMMENT =	next generation web framework

MODULES =	cpan
DISTNAME =	Mojolicious-4.99
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

HOMEPAGE =	http://mojolicio.us/

CPAN_AUTHOR =	SRI

RUN_DEPENDS =	devel/p5-EV \
		net/p5-IO-Socket-IP>=0.20 \
		security/p5-IO-Socket-SSL>=1.84

MAKE_ENV += TEST_CACHING=Yes
MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_IPV6=Yes
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_ONLINE=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_TLS=Yes

.include <bsd.port.mk>
