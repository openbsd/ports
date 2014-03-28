# $OpenBSD: Makefile,v 1.3 2014/03/28 22:15:36 nigel Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.693
CATEGORIES =	net
# CPAN_AUTHOR =	SHADINGER
CPAN_AUTHOR =	DJZORT

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

BUILD_DEPENDS =		devel/p5-Test-Warn

CONFIGURE_STYLE =	modbuild

TEST_FLAGS =		TEST_AUTHOR=true
TEST_DEPENDS =		devel/p5-Test-Perl-Critic \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			devel/p5-Test-CheckManifest

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
