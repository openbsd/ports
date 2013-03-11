# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:57 espie Exp $

COMMENT=	local network discovery tool

DISTNAME=	thcrut-0.1
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://www.thehackerschoice.com/

LIB_DEPENDS=	net/libnet/1.0

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=		c pcap lib/libnet-1.0/net=0

MASTER_SITES=	http://dl.packetstormsecurity.net/wireless/

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
