# $OpenBSD: Makefile,v 1.3 2002/12/29 21:14:12 fgsch Exp $

COMMENT=	"local network discovery tool"

DISTNAME=	thcrut-0.1
CATEGORIES=	net
MASTER_SITES=	http://www.thehackerschoice.com/releases/

HOMEPAGE=	http://www.thehackerschoice.com/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
