# $OpenBSD: Makefile,v 1.12 2000/07/13 07:09:30 brad Exp $

DISTNAME=	libnids-1.14
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	http://www.packetfactory.net/Projects/Libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/Projects/Libnids/

BUILD_DEPENDS=	${LOCALBASE}/lib/libnet.a::net/libnet

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

CONFIGURE_STYLE= gnu

FAKE_FLAGS=	AM_MAKEFLAGS="install_prefix=\"${WRKINST}\""

.include <bsd.port.mk>
