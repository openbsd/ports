#   $OpenBSD: Makefile,v 1.31 2020/07/03 21:45:35 sthen Exp $

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.17
REVISION=	1
CATEGORIES=	net

PERMIT_PACKAGE=	Yes

WANTLIB += c m pcap perl pthread

RUN_DEPENDS=		net/p5-IO-Interface

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# must be run as root
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
