# $OpenBSD: Makefile,v 1.2 2001/10/15 15:20:09 espie Exp $

COMMENT=	"local network discovery tool"

DISTNAME=	thcrut-0.1
CATEGORIES=	net
NEED_VERSION=	1.474
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
