#   $OpenBSD: Makefile,v 1.15 2013/10/11 23:50:32 naddy Exp $

COMMENT=	merge and extract portions of binary pcap files

DISTNAME=	pcapmerge-1.0
REVISION=	0
CATEGORIES=	net perl5

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=sniffers/}

RUN_DEPENDS=	net/p5-Net-Pcap>=0.03
BUILD_DEPENDS=	${RUN_DEPENDS}

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
