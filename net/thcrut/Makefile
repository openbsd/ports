# $OpenBSD: Makefile,v 1.4 2004/01/25 21:10:51 pvalchev Exp $

COMMENT=	"local network discovery tool"

DISTNAME=	thcrut-0.1
CATEGORIES=	net
MASTER_SITES=	http://www.thehackerschoice.com/releases/

HOMEPAGE=	http://www.thehackerschoice.com/

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
