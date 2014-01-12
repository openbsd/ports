# $OpenBSD: Makefile,v 1.11 2014/01/12 23:25:49 bluhm Exp $

COMMENT =		module for network data inspection and modification

DISTNAME =		Net-IMP-0.628

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

.include <bsd.port.mk>
