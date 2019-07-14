# $OpenBSD: Makefile,v 1.17 2019/07/14 02:16:52 naddy Exp $

COMMENT=	local network discovery tool

DISTNAME=	thcrut-0.1
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://www.thehackerschoice.com/

LIB_DEPENDS=	net/libnet/1.0

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

WANTLIB=		c pcap lib/libnet-1.0/net=0

MASTER_SITES=	http://dl.packetstormsecurity.net/wireless/

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
