# $OpenBSD: Makefile,v 1.9 2013/10/16 17:12:14 bluhm Exp $

COMMENT =		module for network data inspection and modification

DISTNAME =		Net-IMP-0.625

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

.include <bsd.port.mk>
