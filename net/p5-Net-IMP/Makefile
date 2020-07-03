# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:34 sthen Exp $

COMMENT =	module for network data inspection and modification

DISTNAME =	Net-IMP-0.634
REVISION =	0

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		net/p5-Net-Inspect \
			net/p5-Net-Pcap \
			net/p5-Net-PcapWriter

PKG_ARCH =		*

.include <bsd.port.mk>
