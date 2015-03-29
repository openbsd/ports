# $OpenBSD: Makefile,v 1.13 2015/03/29 02:25:05 bluhm Exp $

COMMENT =		module for network data inspection and modification

DISTNAME =		Net-IMP-0.632

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

.include <bsd.port.mk>
