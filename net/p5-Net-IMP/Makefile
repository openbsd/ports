# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:53 naddy Exp $

COMMENT =		module for network data inspection and modification

DISTNAME =		Net-IMP-0.632

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

.include <bsd.port.mk>
