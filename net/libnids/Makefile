# $OpenBSD: Makefile,v 1.22 2004/02/01 16:23:36 jose Exp $

COMMENT=	"network monitoring library with TCP/IP reassembly"

DISTNAME=	libnids-1.18
CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/projects/libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

MAINTAINER=	Jose Nazario <jose@crimelabs.net>

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

FAKE_FLAGS=	install_prefix="${WRKINST}"

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
