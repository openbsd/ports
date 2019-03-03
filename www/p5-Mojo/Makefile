# $OpenBSD: Makefile,v 1.32 2019/03/03 01:20:31 afresh1 Exp $

COMMENT =	next generation web framework for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-8.12
CATEGORIES =	www

MAINTAINER =	Manolis Tzanidakis <mtzanidakis@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

HOMEPAGE =	https://mojolicious.org/

RUN_DEPENDS =	devel/p5-EV \
		security/p5-IO-Socket-SSL>=1.94

TEST_DEPENDS +=	net/p5-IO-Socket-Socks \
		devel/p5-Role-Tiny>=2.000001 \
		converters/p5-Cpanel-JSON-XS>=4.04

MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_SUBPROCESS=Yes
MAKE_ENV += TEST_UNIX=YES
MAKE_ENV += TEST_SOCKS=YES

# see pkg/README for certificate handling
post-install:
	rm -rf ${PREFIX}/${P5SITE}/Mojo/IOLoop/resources/server.{crt,key}

.include <bsd.port.mk>
