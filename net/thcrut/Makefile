# $OpenBSD: Makefile,v 1.1.1.1 2001/07/18 20:30:43 dugsong Exp $

COMMENT=	"local network discovery tool"

DISTNAME=	thcrut-0.1
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.thehackerschoice.com/releases/

HOMEPAGE=	http://www.thehackerschoice.com/

BUILD_DEPENDS=	${LOCALBASE}/lib/libnet.a::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu old

CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --sysconfdir=${PREFIX}/share/thcrut

.include <bsd.port.mk>
