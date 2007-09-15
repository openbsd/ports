# $OpenBSD: Makefile,v 1.7 2007/09/15 23:29:58 merdely Exp $

COMMENT=		control chroot and su access rights by application

VERSION=		1.3
DISTNAME=		chrootuid${VERSION}
PKGNAME=		chrootuid-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://www.porcupine.org/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		ftp://ftp.porcupine.org/pub/security/ \
			ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/chrootuid/

ALL_TARGET=		chrootuid
MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/chrootuid ${PREFIX}/sbin/chrootuid
	${INSTALL_MAN} ${WRKSRC}/chrootuid.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chrootuid
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/chrootuid

.include <bsd.port.mk>
