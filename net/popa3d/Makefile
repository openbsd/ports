# $OpenBSD: Makefile,v 1.5 2000/02/12 00:44:00 espie Exp $

DISTNAME=	popa3d-0.4
CATEGORIES=	net mail
MASTER_SITES=   http://www.openwall.com/popa3d/ \
                ftp://ftp.openwall.com/popa3d/ \
		ftp://ftp.false.com/security/popa3d/ \
                ftp://ftp.dataforce.net/pub/solar/
NEED_VERSION=	1.195

MAINTAINER=	cd@sentia.nl

NO_CONFIGURE=	yes
ALL_TARGET=	popa3d
MAKE_FLAGS=	CC=${CC} LD=${CC} CFLAGS="-c ${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${PREFIX}/libexec

.include <bsd.port.mk>
