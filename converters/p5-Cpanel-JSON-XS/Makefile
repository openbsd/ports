# $OpenBSD: Makefile,v 1.17 2018/02/03 18:58:05 bluhm Exp $

COMMENT =	cPanel fork of JSON::XS, fast and correct serializing

DISTNAME =	Cpanel-JSON-XS-4.01

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

CPAN_AUTHOR =		RURBAN

MODULES =		cpan
TEST_DEPENDS =		converters/p5-JSON \
			converters/p5-JSON-XS \
			devel/p5-Test-CPAN-Meta>=0.12 \
			devel/p5-Test-LeakTrace \
			devel/p5-common-sense>=3.50 \
			www/p5-Mojo>=6.11

.include <bsd.port.mk>
