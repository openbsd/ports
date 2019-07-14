# $OpenBSD: Makefile,v 1.26 2019/07/14 00:39:39 naddy Exp $

COMMENT=	ICMP router discovery protocol spoofer

DISTNAME=	rdp
PKGNAME=	rdp-1.0
REVISION =	0
CATEGORIES=	security
MASTER_SITES=	http://www.atstake.com/research/tools/

LIB_DEPENDS=	net/libnet/1.0

PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net=0

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include/libnet-1.0 -o rdp \
		icmp_rdp.c -L${PREFIX}/lib/libnet-1.0 -lnet -lpcap

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
	${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
