# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:01 sthen Exp $

COMMENT=		control chroot and su access rights by application

VERSION=		1.3
REVISION=		0
DISTNAME=		chrootuid${VERSION}
PKGNAME=		chrootuid-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://www.porcupine.org/

# BSD-style
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		http://ftp.porcupine.org/pub/security/ \
			ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/chrootuid/

ALL_TARGET=		chrootuid
MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/chrootuid ${PREFIX}/sbin/chrootuid
	${INSTALL_MAN} ${WRKSRC}/chrootuid.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chrootuid
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/chrootuid

.include <bsd.port.mk>
