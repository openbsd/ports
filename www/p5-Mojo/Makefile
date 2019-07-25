# $OpenBSD: Makefile,v 1.36 2019/07/25 20:45:03 cwen Exp $

COMMENT =	next generation web framework for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-8.22
CATEGORIES =	www

MAINTAINER =	Manolis Tzanidakis <mtzanidakis@gmail.com>

# Perl
PERMIT_PACKAGE =		Yes

HOMEPAGE =	https://mojolicious.org/

RUN_DEPENDS =	devel/p5-EV \
		security/p5-IO-Socket-SSL>=1.94

TEST_DEPENDS +=	net/p5-IO-Socket-Socks \
		devel/p5-Role-Tiny>=2.000001 \
		converters/p5-Cpanel-JSON-XS>=4.04

MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_IPV6=YES
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_SOCKS=YES
MAKE_ENV += TEST_SUBPROCESS=Yes
MAKE_ENV += TEST_TLS=YES
MAKE_ENV += TEST_UNIX=YES

# see pkg/README for certificate handling
post-install:
	rm -rf ${PREFIX}/${P5SITE}/Mojo/IOLoop/resources/server.{crt,key}

.include <bsd.port.mk>
