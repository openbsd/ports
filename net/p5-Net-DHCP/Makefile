# $OpenBSD: Makefile,v 1.1.1.1 2011/03/11 19:56:39 sthen Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.67_1
PKGNAME =	p5-${DISTNAME:S/_/./}
CATEGORIES =	net
# CPAN_AUTHOR =	SHADINGER
CPAN_AUTHOR =	DJZORT

MAINTAINER =	Nigel Taylor <njtaylor@asterisk.demon.co.uk>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =	cpan

REGRESS_FLAGS =		TEST_AUTHOR=true
REGRESS_DEPENDS =	devel/p5-Test-Perl-Critic \
			devel/p5-Test-CheckManifest

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
