# $OpenBSD: Makefile,v 1.25 2005/10/15 03:21:12 brad Exp $

COMMENT=	"network monitoring library with TCP/IP reassembly"

DISTNAME=	libnids-1.18
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/projects/libnids/dist/

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

BUILD_DEPENDS=	:libnet-1.0*:net/libnet/1.0

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

FAKE_FLAGS=	install_prefix="${WRKINST}"

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-libnet="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
