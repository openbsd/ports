#   $OpenBSD: Makefile,v 1.7 2002/12/29 21:14:11 fgsch Exp $

COMMENT=	"merge and extract portions of binary pcap files"

DISTNAME=	pcapmerge-1.0
CATEGORIES=	net perl5
MASTER_SITES=	http://indev.insu.com/sources/

HOMEPAGE=	http://indev.insu.com/Fwctl/pcapmerge.html

BUILD_DEPENDS=	:p5-Net-Pcap->=0.03:net/p5-Net-Pcap
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
