# $OpenBSD: Makefile,v 1.1.1.1 1999/09/10 22:07:34 brad Exp $

DISTNAME=	popa3d-0.3
CATEGORIES=	mail
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
