# $OpenBSD: Makefile,v 1.8 2000/03/07 09:57:25 camield Exp $

DISTNAME=	popa3d-0.4
CATEGORIES=	net mail
MAINTAINER=	cd@sentia.nl
MASTER_SITES=   http://www.openwall.com/popa3d/ \
                ftp://ftp.openwall.com/popa3d/ \
		ftp://ftp.false.com/security/popa3d/ \
                ftp://ftp.dataforce.net/pub/solar/

NEED_VERSION=	1.218

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

NO_CONFIGURE=	Yes
ALL_TARGET=	popa3d
MAKE_FLAGS=	CC=${CC} LD=${CC} CFLAGS="-c ${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${DESTDIR}${PREFIX}/libexec

.include <bsd.port.mk>
