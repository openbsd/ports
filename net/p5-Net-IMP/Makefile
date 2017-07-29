# $OpenBSD: Makefile,v 1.16 2017/07/29 19:05:50 bluhm Exp $

COMMENT =	module for network data inspection and modification

DISTNAME =	Net-IMP-0.634

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

PKG_ARCH =		*

.include <bsd.port.mk>
