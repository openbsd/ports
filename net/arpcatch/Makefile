# $OpenBSD: Makefile,v 1.8 2001/04/20 07:53:01 reinhard Exp $

COMMENT=	userland arp-proxy daemon

DISTNAME=	arpcatch
PKGNAME=	${DISTNAME}-19970824
CATEGORIES=	net
NEED_VERSION=	1.397
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://skoda.sockpuppet.org/tqbf/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=		${WRKDIR}/${DISTNAME}

ALL_TARGET=
INSTALL_TARGET=	install

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aproxyd ${PREFIX}/sbin/aproxyd 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arpcatch
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/arpcatch

.include <bsd.port.mk>
