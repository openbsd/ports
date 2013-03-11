# $OpenBSD: Makefile,v 1.38 2013/03/11 11:35:48 espie Exp $

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

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
