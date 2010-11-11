# $OpenBSD: Makefile,v 1.27 2010/11/11 18:43:10 espie Exp $

DISTNAME=	scanlogd-2.2.6
REVISION =	4
CATEGORIES=	security
COMMENT=	TCP port scan detection tool

HOMEPAGE=	http://www.openwall.com/scanlogd/

MASTER_SITES=	ftp://ftp.openwall.com/pub/projects/scanlogd/ \
		${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net.=0

BUILD_DEPENDS=	::net/libnids
LIB_DEPENDS=	:libnet->=1.0,<1.1:net/libnet/1.0

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=	libnids
USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scanlogd ${PREFIX}/sbin/scanlogd
	${INSTALL_MAN} ${WRKSRC}/scanlogd.8 ${PREFIX}/man/man8/scanlogd.8

.include <bsd.port.mk>
