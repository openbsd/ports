#   $OpenBSD: Makefile,v 1.28 2016/04/15 20:09:31 sthen Exp $

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.17
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap perl

RUN_DEPENDS=		net/p5-IO-Interface

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# must be run as root
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
