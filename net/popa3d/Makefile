# $OpenBSD: Makefile,v 1.3 2000/02/03 18:45:38 brad Exp $

DISTNAME=	popa3d-0.4
CATEGORIES=	net mail
MASTER_SITES=   http://www.openwall.com/popa3d/ \
                ftp://ftp.openwall.com/popa3d \
                ftp://ftp.dataforce.net/pub/solar/

MAINTAINER=	cd@sentia.nl

NO_CONFIGURE=	yes
ALL_TARGET=	popa3d

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${PREFIX}/libexec

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
