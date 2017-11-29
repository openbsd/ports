# $OpenBSD: Makefile,v 1.41 2017/11/29 13:02:24 jca Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

SHARED_LIBS= nids 0.0

DISTNAME=	libnids-1.24
REVISION=	1

CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libnids/}

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += lib/libnet-1.0/net=0 pcap

LIB_DEPENDS=	net/libnet/1.0

DESTDIRNAME=	install_prefix

MAKE_ENV=	LIBNIDS_SOVER=${LIBnids_VERSION}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-shared \
		 --disable-libglib \
		 --with-libnet="${LOCALBASE}"

NO_TEST=	Yes

.include <bsd.port.mk>
