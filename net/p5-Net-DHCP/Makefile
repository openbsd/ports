COMMENT =	object methods to create a DHCP packet

DISTNAME =	Net-DHCP-0.9
PKGNAME =	p5-Net-DHCP-0.900
CPAN_AUTHOR =	DJZORT

CATEGORIES =	net


MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Module-Build>=0.28
RUN_DEPENDS =		devel/p5-Ref-Util
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Test-Warn \
			net/p5-Net-Frame-Dump \
			net/p5-Net-Pcap

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
