# $OpenBSD: Makefile,v 1.7 2007/05/26 23:13:25 aanriot Exp $

COMMENT=	"local network discovery tool"

DISTNAME=	thcrut-0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}/releases/

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
