# $OpenBSD: Makefile,v 1.23 2019/02/08 19:07:21 jasper Exp $

COMMENT=		remote promiscuous mode detection tool

DISTNAME=		sentinel-1.0
REVISION =		3
CATEGORIES=    		security net

HOMEPAGE=		http://packetfactory.openwall.net/projects/sentinel/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c pcap pthread lib/libnet-1.0/net=0

MASTER_SITES=		http://packetfactory.openwall.net/projects/sentinel/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/IDS/sentinel/}

LIB_DEPENDS=		net/libnet/1.0

WRKDIST=		${WRKDIR}/sentinel

ALL_TARGET=		sentinel
MAKE_FLAGS=		CC="${CC}" CFLAGS='${CFLAGS} -Wall -I. \
			 -I${LOCALBASE}/include/libnet-1.0 `libnet-config-1.0 --defines`' \
			LIBS="-lnet -L${LOCALBASE}/lib/libnet-1.0 -lpcap -pthread"

NO_TEST=		Yes


do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sentinel ${PREFIX}/bin/sentinel
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sentinel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sentinel

.include <bsd.port.mk>
