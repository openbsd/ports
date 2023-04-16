COMMENT =	module for pcap access

DISTNAME =	Net-Pcap-0.21

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pcap perl

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Distribution \
			devel/p5-Test-Exception \
			devel/p5-Test-Pod>=1.14 \
			net/p5-POE-Component-Pcap

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

# must be run as root
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
