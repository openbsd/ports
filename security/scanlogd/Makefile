# $OpenBSD: Makefile,v 1.38 2020/04/07 13:29:53 bentley Exp $

COMMENT=	TCP port scan detection tool

DISTNAME=	scanlogd-2.2.7
REVISION=	3
CATEGORIES=	security
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://www.openwall.com/scanlogd/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pcap lib/libnet-1.0/net=0 nids

MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.openwall.com/pub/projects/scanlogd/

LIB_DEPENDS=	net/libnet/1.0 \
		net/libnids

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=	libnids
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN} ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
