# $OpenBSD: Makefile,v 1.18 2004/01/25 21:10:51 pvalchev Exp $

COMMENT=	"IP stack integrity checker"

DISTNAME=	isic-0.05
CATEGORIES=	security

MASTER_SITES=	http://www.packetfactory.net/projects/ISIC/

HOMEPAGE=	http://www.packetfactory.net/projects/ISIC/

EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/{esic,icmpsic,isic,tcpsic,udpsic}

.include <bsd.port.mk>
