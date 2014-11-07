# $OpenBSD: Makefile,v 1.15 2014/11/07 11:15:24 sthen Exp $

COMMENT =	next generation web framework for Perl

MODULES =	cpan
DISTNAME =	Mojolicious-5.58
REVISION =	0
CATEGORIES =	www

MAINTAINER =	Mark Patruck <mark@wrapped.cx>

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
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_TLS=Yes

.include <bsd.port.mk>
