# $OpenBSD: Makefile,v 1.32 2009/03/13 11:34:17 sthen Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

DISTNAME=	libnids-1.23
PKGNAME=	${DISTNAME}p0
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
