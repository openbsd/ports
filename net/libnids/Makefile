# $OpenBSD: Makefile,v 1.33 2010/04/09 09:48:18 jasper Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

DISTNAME=	libnids-1.24
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libnids/}

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

BUILD_DEPENDS=	:libnet->=1.0,<1.1:net/libnet/1.0

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes  

DESTDIRNAME=	install_prefix

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-libglib \
		 --with-libnet="${LOCALBASE}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
