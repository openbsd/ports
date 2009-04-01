# $OpenBSD: Makefile,v 1.21 2009/04/01 16:24:05 jasper Exp $
# $FreeBSD: Makefile,v 1.10 1999/01/06 17:11:23 dt Exp $

COMMENT=	userland smbfs --- SMB to NFS protocols converter

VERSION=	1.3
DISTNAME=	Sharity-Light.${VERSION}
PKGNAME=	sharity-light-${VERSION}p0
CATEGORIES=	net

MASTER_SITES=	http://www.obdev.at/ftp/pub/Products/Sharity-Light/

HOMEPAGE=	http://www.obdev.at/products/sharity-light/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

NO_REGRESS=	Yes

MAKE_FLAGS=	ARCH="" THE_CC="${CC}" CFLAGS="${CFLAGS} -Wall"

post-extract:
	@mkdir -p ${WRKSRC}/unshlight
	@cp -f ${FILESDIR}/unshlight.c ${WRKSRC}/unshlight
	@cp -f ${FILESDIR}/Makefile.unshlight ${WRKSRC}/unshlight/Makefile

post-build:
	@cd ${WRKSRC}/unshlight && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Sharity-Light
	${INSTALL_PROGRAM} ${WRKSRC}/shlight ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/unshlight/unshlight ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/Sharity-Light
	${INSTALL_DATA} ${WRKSRC}/FAQ.txt ${PREFIX}/share/doc/Sharity-Light/FAQ
	${INSTALL_MAN} ${WRKSRC}/smbmount.8 ${PREFIX}/man/man8/sh-smbmount.8

.include <bsd.port.mk>
