# $OpenBSD: Makefile,v 1.13 2000/08/04 09:51:00 camield Exp $

DISTNAME=	popa3d-0.4
CATEGORIES=	net mail
NEED_VERSION=	1.218
MAINTAINER=	cd@sentia.nl
MASTER_SITES=   http://www.openwall.com/popa3d/ \
                ftp://ftp.openwall.com/popa3d/ \
		ftp://ftp.false.com/security/popa3d/ \
                ftp://ftp.dataforce.net/pub/solar/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

NO_CONFIGURE=	Yes
MAKE_FLAGS=	CC=${CC} LD=${CC} CFLAGS="-c ${CFLAGS}"

FLAVORS=	apop
FLAVOR?=

.if ${FLAVOR:L:Mapop}
MASTER_SITES0=  	http://www.monkey.org/~dugsong/
PATCHFILES=     	popa3d-0.4-apop.patch-1:0
PATCH_DIST_STRIP=       -p1
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
