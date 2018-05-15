# $OpenBSD: Makefile,v 1.43 2018/05/15 19:17:05 jasper Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

DISTNAME=	libnids-1.24
SHARED_LIBS=	nids 0.1
REVISION=	2

CATEGORIES=	net

HOMEPAGE=	http://www.packetfactory.net/projects/libnids/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libnids/}
FIX_EXTRACT_PERMISSIONS=Yes

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
