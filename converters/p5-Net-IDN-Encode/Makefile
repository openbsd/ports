# $OpenBSD: Makefile,v 1.18 2016/12/07 18:31:55 bluhm Exp $

COMMENT =	Internationalizing Domain Names in Applications

DISTNAME =	Net-IDN-Encode-2.302

CATEGORIES =	net converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

MODULES =		cpan
CPAN_AUTHOR =		CFAERBER
RUN_DEPENDS =		converters/p5-Net-IDN-Nameprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
