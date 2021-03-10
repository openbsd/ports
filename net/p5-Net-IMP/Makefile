# $OpenBSD: Makefile,v 1.19 2021/03/10 19:41:18 bluhm Exp $

COMMENT =	module for network data inspection and modification

DISTNAME =	Net-IMP-0.635

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

PKG_ARCH =		*

.include <bsd.port.mk>
