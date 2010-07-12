#   $OpenBSD: Makefile,v 1.11 2010/07/12 22:07:40 sthen Exp $

COMMENT=	merge and extract portions of binary pcap files

DISTNAME=	pcapmerge-1.0
REVISION=	0
CATEGORIES=	net perl5

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=sniffers/}

RUN_DEPENDS=	:p5-Net-Pcap->=0.03:net/p5-Net-Pcap
BUILD_DEPENDS=	${RUN_DEPENDS}

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
