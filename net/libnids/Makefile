# $OpenBSD: Makefile,v 1.39 2013/10/11 23:50:19 naddy Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

DISTNAME=	libnids-1.24
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libnids/}

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

BUILD_DEPENDS=	net/libnet/1.0

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

DESTDIRNAME=	install_prefix

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-libglib \
		 --with-libnet="${LOCALBASE}"

NO_TEST=	Yes

.include <bsd.port.mk>
