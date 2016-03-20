#   $OpenBSD: Makefile,v 1.27 2016/03/20 19:56:54 naddy Exp $

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.16
REVISION=	4
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap perl

RUN_DEPENDS=		net/p5-IO-Interface

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# must be run as root
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
