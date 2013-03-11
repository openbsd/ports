# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:52 espie Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.67_1
PKGNAME =	p5-${DISTNAME:S/_/./}
CATEGORIES =	net
# CPAN_AUTHOR =	SHADINGER
CPAN_AUTHOR =	DJZORT

MAINTAINER =	Nigel Taylor <njtaylor@asterisk.demon.co.uk>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

TEST_FLAGS =		TEST_AUTHOR=true
TEST_DEPENDS =	devel/p5-Test-Perl-Critic \
			devel/p5-Test-CheckManifest

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
