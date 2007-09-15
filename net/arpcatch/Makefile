# $OpenBSD: Makefile,v 1.14 2007/09/15 22:36:52 merdely Exp $

COMMENT=	userland arp-proxy daemon

DISTNAME=	arpcatch
PKGNAME=	${DISTNAME}-19970824
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://skoda.sockpuppet.org/tqbf/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c pcap

WRKDIST=	${WRKDIR}/${DISTNAME}

ALL_TARGET=
INSTALL_TARGET=	install

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aproxyd ${PREFIX}/sbin/aproxyd 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arpcatch
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/arpcatch

.include <bsd.port.mk>
