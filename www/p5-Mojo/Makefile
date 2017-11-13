# $OpenBSD: Makefile,v 1.29 2017/11/13 07:21:26 remi Exp $

COMMENT =	next generation web framework for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-7.52
CATEGORIES =	www

MAINTAINER =	Mark Patruck <mark@wrapped.cx>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

HOMEPAGE =	http://mojolicio.us/

CPAN_AUTHOR =	SRI

RUN_DEPENDS =	devel/p5-EV \
		security/p5-IO-Socket-SSL>=1.94

TEST_DEPENDS +=	net/p5-IO-Socket-Socks

MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_IPV6=Yes
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_SOCKS=Yes
MAKE_ENV += TEST_SUBPROCESS=Yes
MAKE_ENV += TEST_TLS=Yes
MAKE_ENV += TEST_UNIX=YES

# see pkg/README for certificate handling
post-install:
	rm -rf ${PREFIX}/${P5SITE}/Mojo/IOLoop/resources/server.{crt,key}

.include <bsd.port.mk>
