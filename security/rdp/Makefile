# $OpenBSD: Makefile,v 1.18 2004/12/27 13:28:35 alek Exp $

COMMENT=	"ICMP router discovery protocol spoofer"

DISTNAME=	rdp
PKGNAME=	rdp-1.0
CATEGORIES=	security
MASTER_SITES=	http://www.atstake.com/research/tools/

LIB_DEPENDS=	net::net/libnet

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include -o rdp \
		icmp_rdp.c -L${PREFIX}/lib -lnet -lpcap

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
	${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
