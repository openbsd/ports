#   $OpenBSD: Makefile,v 1.17 2010/10/07 10:20:27 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.16
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		pcap 
RUN_DEPENDS=		::net/p5-IO-Interface

.include <bsd.port.mk>
