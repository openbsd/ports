# $OpenBSD: Makefile,v 1.14 2000/10/22 14:03:34 espie Exp $

DISTNAME=	libnids-1.14
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	http://www.packetfactory.net/Projects/Libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/Projects/Libnids/

BUILD_DEPENDS=	${LOCALBASE}/lib/libnet.a::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

FAKE_FLAGS=	install_prefix="${WRKINST}"

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
