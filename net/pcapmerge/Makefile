#   $OpenBSD: Makefile,v 1.1.1.1 2001/01/08 11:53:48 danh Exp $

DISTNAME=	pcapmerge-1.0
CATEGORIES=	net perl5
NEED_VERSION=	1.348
MASTER_SITES=	http://indev.insu.com/sources/

HOMEPAGE=	http://indev.insu.com/Fwctl/pcapmerge.html

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/Net/Pcap.pm::net/p5-Net-Pcap

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
