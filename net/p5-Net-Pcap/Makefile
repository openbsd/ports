#   $OpenBSD: Makefile,v 1.13 2008/10/02 20:38:37 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	module for pcap access

MODULES=	cpan
DISTNAME=	Net-Pcap-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pcap 

.include <bsd.port.mk>
