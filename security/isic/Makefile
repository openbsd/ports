# $OpenBSD: Makefile,v 1.16 2002/10/28 17:35:01 naddy Exp $

COMMENT=	"IP stack integrity checker"

DISTNAME=	isic-0.05
CATEGORIES=	security

MASTER_SITES=	http://www.packetfactory.net/Projects/ISIC/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/{esic,icmpsic,isic,tcpsic,udpsic}

.include <bsd.port.mk>
