# $OpenBSD: Makefile,v 1.12 2000/06/16 23:06:09 espie Exp $

DISTNAME=	popa3d-0.4
HOMEPAGE=	http://www.openwall.com/popa3d/
CATEGORIES=	net mail
NEED_VERSION=	1.294
MAINTAINER=	cd@sentia.nl

MASTER_SITES=   ${HOMEPAGE} \
                ftp://ftp.openwall.com/popa3d/ \
		ftp://ftp.false.com/security/popa3d/ \
                ftp://ftp.dataforce.net/pub/solar/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	popa3d
MAKE_FLAGS=	CC=${CC} LD=${CC} CFLAGS="-c ${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${PREFIX}/libexec

.include <bsd.port.mk>
