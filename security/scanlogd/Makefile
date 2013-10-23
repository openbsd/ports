# $OpenBSD: Makefile,v 1.32 2013/10/23 10:10:56 sthen Exp $

COMMENT=	TCP port scan detection tool

DISTNAME=	scanlogd-2.2.7
CATEGORIES=	security

HOMEPAGE=	http://www.openwall.com/scanlogd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap lib/libnet-1.0/net=0

MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.openwall.com/pub/projects/scanlogd/

BUILD_DEPENDS=	net/libnids
LIB_DEPENDS=	net/libnet/1.0

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=	libnids
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN} ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
