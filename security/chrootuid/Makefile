# $OpenBSD: Makefile,v 1.1.1.1 2001/07/27 18:48:18 jsyn Exp $

COMMENT=		"control chroot and su access rights by application"

VERSION=		1.2
DISTNAME=		chrootuid${VERSION}
PKGNAME=		chrootuid-${VERSION}
CATEGORIES=		security
NEED_VERSION=		1.427

HOMEPAGE=		http://www.porcupine.org/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.porcupine.org/pub/security/ \
			ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/chrootuid/

EXTRACT_SUFX=		.shar.Z
EXTRACT_CASES=		*.shar.Z) zcat ${FULLDISTDIR}/$$archive | gunshar;;

BUILD_DEPENDS=		gunshar::archivers/gshar+gunshar

WRKDIST=		${WRKDIR}

ALL_TARGET=		chrootuid
MAKE_FLAGS=		CC="${CC}" CFLAGS='${CFLAGS} -DUSE_SYSCTL'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/chrootuid ${PREFIX}/sbin/chrootuid
	${INSTALL_MAN} ${WRKSRC}/chrootuid.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chrootuid
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/chrootuid

.include <bsd.port.mk>
