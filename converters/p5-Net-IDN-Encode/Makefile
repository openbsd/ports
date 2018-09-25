# $OpenBSD: Makefile,v 1.21 2018/09/25 16:27:05 bluhm Exp $

COMMENT =	Internationalizing Domain Names in Applications

DISTNAME =	Net-IDN-Encode-2.401

CATEGORIES =	net converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

MODULES =		cpan
CPAN_AUTHOR =		CFAERBER
RUN_DEPENDS =		converters/p5-Net-IDN-Nameprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
