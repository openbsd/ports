# $OpenBSD: Makefile,v 1.17 2004/09/23 20:05:43 sturm Exp $

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
