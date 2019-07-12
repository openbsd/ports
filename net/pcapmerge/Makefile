#   $OpenBSD: Makefile,v 1.17 2019/07/12 20:48:42 sthen Exp $

COMMENT=	merge and extract portions of binary pcap files

DISTNAME=	pcapmerge-1.0
REVISION=	1
CATEGORIES=	net perl5

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=sniffers/}

RUN_DEPENDS=	net/p5-Net-Pcap>=0.03
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
