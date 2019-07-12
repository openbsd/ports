# $OpenBSD: Makefile,v 1.45 2019/07/12 21:02:23 sthen Exp $

COMMENT=	network monitoring library with TCP/IP reassembly

DISTNAME=	libnids-1.24
SHARED_LIBS=	nids 0.1
REVISION=	3

CATEGORIES=	net

HOMEPAGE=	http://libnids.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

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
