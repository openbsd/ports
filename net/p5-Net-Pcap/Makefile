#   $OpenBSD: Makefile,v 1.23 2013/03/11 11:35:53 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.16
REVISION=	2
CATEGORIES=	net
USE_GROFF =	Yes

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap 

RUN_DEPENDS=		net/p5-IO-Interface

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

# must be run as root
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
