# $OpenBSD: Makefile,v 1.20 2003/10/30 00:46:47 pvalchev Exp $

COMMENT=	"network monitoring library with TCP/IP reassembly"

DISTNAME=	libnids-1.18
CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/projects/libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

LIB_DEPENDS=	net::net/libnet

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

FAKE_FLAGS=	install_prefix="${WRKINST}"

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
