# $OpenBSD: Makefile,v 1.31 2013/03/11 11:41:28 espie Exp $

DISTNAME=	scanlogd-2.2.6
REVISION =	5
CATEGORIES=	security
COMMENT=	TCP port scan detection tool

HOMEPAGE=	http://www.openwall.com/scanlogd/

MASTER_SITES=	ftp://ftp.openwall.com/pub/projects/scanlogd/ \
		${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net=0

BUILD_DEPENDS=	net/libnids
LIB_DEPENDS=	net/libnet/1.0

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=	libnids
USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN} ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
