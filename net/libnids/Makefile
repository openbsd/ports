# $OpenBSD: Makefile,v 1.17 2001/05/06 05:00:05 lebel Exp $

COMMENT=	"network monitoring library with TCP/IP reassembly"

DISTNAME=	libnids-1.16
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.packetfactory.net/Projects/Libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/Projects/Libnids/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

FAKE_FLAGS=	install_prefix="${WRKINST}"

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
