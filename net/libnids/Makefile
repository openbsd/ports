# $OpenBSD: Makefile,v 1.21 2004/01/25 21:10:50 pvalchev Exp $

COMMENT=	"network monitoring library with TCP/IP reassembly"

DISTNAME=	libnids-1.18
CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/projects/libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

FAKE_FLAGS=	install_prefix="${WRKINST}"

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
