#   $OpenBSD: Makefile,v 1.3 2001/04/12 15:59:17 bmc Exp $

COMMENT=	"merge and extract portions of binary pcap files"

DISTNAME=	pcapmerge-1.0
CATEGORIES=	net perl5
NEED_VERSION=	1.394
MASTER_SITES=	http://indev.insu.com/sources/

HOMEPAGE=	http://indev.insu.com/Fwctl/pcapmerge.html

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/Net/Pcap.pm::net/p5-Net-Pcap
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
