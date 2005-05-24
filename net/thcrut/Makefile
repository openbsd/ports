# $OpenBSD: Makefile,v 1.6 2005/05/24 00:13:31 mjc Exp $

COMMENT=	"local network discovery tool"

DISTNAME=	thcrut-0.1
CATEGORIES=	net
MASTER_SITES=	http://www.thehackerschoice.com/releases/

HOMEPAGE=	http://www.thehackerschoice.com/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
