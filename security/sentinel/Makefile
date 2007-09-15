# $OpenBSD: Makefile,v 1.15 2007/09/15 23:30:01 merdely Exp $

COMMENT=		remote promiscous mode detection tool

DISTNAME=		sentinel-1.0
CATEGORIES=    		security net

HOMEPAGE=		http://www.packetfactory.net/projects/sentinel/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c pcap pthread

MASTER_SITES=		http://www.packetfactory.net/projects/sentinel/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/IDS/sentinel/}

LIB_DEPENDS=		lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0

WRKDIST=		${WRKDIR}/sentinel

ALL_TARGET=		sentinel
MAKE_FLAGS=		CC="${CC}" CFLAGS='${CFLAGS} -Wall -I. \
			 -I${LOCALBASE}/include/libnet-1.0 `libnet-config-1.0 --defines`' \
			LIBS="-lnet -L${LOCALBASE}/lib/libnet-1.0 -lpcap -pthread"

NO_REGRESS=		Yes


do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sentinel ${PREFIX}/bin/sentinel
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sentinel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sentinel

.include <bsd.port.mk>
