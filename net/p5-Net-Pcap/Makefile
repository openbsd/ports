#   $OpenBSD: Makefile,v 1.26 2015/07/16 23:57:25 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.16
REVISION=	4
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap 

RUN_DEPENDS=		net/p5-IO-Interface

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# must be run as root
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
