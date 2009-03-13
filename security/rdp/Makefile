# $OpenBSD: Makefile,v 1.21 2009/03/13 11:34:17 sthen Exp $

COMMENT=	ICMP router discovery protocol spoofer

DISTNAME=	rdp
PKGNAME=	rdp-1.0p0
CATEGORIES=	security
MASTER_SITES=	http://www.atstake.com/research/tools/

LIB_DEPENDS=	lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include/libnet-1.0 -o rdp \
		icmp_rdp.c -L${PREFIX}/lib/libnet-1.0 -lnet -lpcap

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
	${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
