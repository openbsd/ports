# $OpenBSD: Makefile,v 1.25 2020/08/10 14:52:11 bket Exp $

COMMENT =	Internationalizing Domain Names in Applications

DISTNAME =	Net-IDN-Encode-2.500
REVISION =	1

CATEGORIES =	net converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan
RUN_DEPENDS =		converters/p5-Net-IDN-Nameprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
