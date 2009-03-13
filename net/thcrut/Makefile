# $OpenBSD: Makefile,v 1.9 2009/03/13 11:32:45 sthen Exp $

COMMENT=	local network discovery tool

DISTNAME=	thcrut-0.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}/releases/

HOMEPAGE=	http://www.thehackerschoice.com/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=		c pcap 

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
