# $OpenBSD: Makefile,v 1.14 2001/06/11 13:14:39 dugsong Exp $

COMMENT=	"IP stack integrity checker"

DISTNAME=	isic-0.05
CATEGORIES=	security
NEED_VERSION=	1.402
MASTER_SITES=	http://www.packetfactory.net/Projects/ISIC/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
