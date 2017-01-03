# $OpenBSD: Makefile,v 1.20 2017/01/03 19:54:36 bluhm Exp $

COMMENT =	Internationalizing Domain Names in Applications

DISTNAME =	Net-IDN-Encode-2.400

CATEGORIES =	net converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

MODULES =		cpan
CPAN_AUTHOR =		CFAERBER
RUN_DEPENDS =		converters/p5-Net-IDN-Nameprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
