#   $OpenBSD: Makefile,v 1.19 2010/11/19 22:31:36 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.16
CATEGORIES=	net
USE_GROFF =	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		pcap 
RUN_DEPENDS=		net/p5-IO-Interface

.include <bsd.port.mk>
