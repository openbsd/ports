# $OpenBSD: Makefile,v 1.4 2000/02/09 08:37:32 camield Exp $

DISTNAME=	popa3d-0.4
CATEGORIES=	net mail
MASTER_SITES=   http://www.openwall.com/popa3d/ \
                ftp://ftp.openwall.com/popa3d/ \
		ftp://ftp.false.com/security/popa3d/ \
                ftp://ftp.dataforce.net/pub/solar/

MAINTAINER=	cd@sentia.nl

NO_CONFIGURE=	yes
ALL_TARGET=	popa3d
MAKE_FLAGS=	CC=${CC} LD=${CC} CFLAGS="-c ${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${PREFIX}/libexec

.include <bsd.port.mk>
