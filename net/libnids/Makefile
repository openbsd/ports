# $OpenBSD: Makefile,v 1.27 2007/09/15 22:36:55 merdely Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

DISTNAME=	libnids-1.20
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libnids/}

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
