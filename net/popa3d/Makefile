# $OpenBSD: Makefile,v 1.2 1999/09/12 15:04:40 brad Exp $

DISTNAME=	popa3d-0.3
CATEGORIES=	net mail
MASTER_SITES=	ftp://ftp.dataforce.net/pub/solar/ \
		ftp://ftp.dqc.org/archive/

MAINTAINER=	dobbe@xs4all.nl

NO_CONFIGURE=	yes
ALL_TARGET=	popa3d

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${PREFIX}/libexec

post-install:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
