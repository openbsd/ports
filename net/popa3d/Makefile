# $OpenBSD: Makefile,v 1.16 2000/09/25 07:40:14 camield Exp $

DISTNAME=	popa3d-0.4
HOMEPAGE=	http://www.openwall.com/popa3d
CATEGORIES=	net mail
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES=   http://www.openwall.com/popa3d/ \
                ftp://ftp.openwall.com/popa3d/ \
		ftp://ftp.false.com/security/popa3d/ \
                ftp://ftp.dataforce.net/pub/solar/
MASTER_SITES0= 	http://www.monkey.org/~dugsong/

PATCHFILES=		popa3d-0.4-gnu-md5-alignment.diff.gz
PATCH_DIST_STRIP=       -p1

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_CONFIGURE=	Yes
MAKE_FLAGS=	CC=${CC} LD=${CC} CFLAGS="-c ${CFLAGS}"

FLAVORS=	apop
FLAVOR?=

.if ${FLAVOR:L:Mapop}
PATCHFILES+=     	popa3d-0.4-apop.patch-1:0
.else
# the original Makefile does not have an 'all' target
ALL_TARGET=popa3d
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/popa3d ${PREFIX}/libexec
.if ${FLAVOR:L:Mapop}
	${INSTALL_PROGRAM} ${WRKSRC}/popauth ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/popauth.8 ${PREFIX}/man/man8
.endif

.include <bsd.port.mk>
