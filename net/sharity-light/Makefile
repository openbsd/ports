# $OpenBSD: Makefile,v 1.26 2014/01/01 20:46:28 naddy Exp $

COMMENT=	userland smbfs --- SMB to NFS protocols converter

VERSION=	1.3
DISTNAME=	Sharity-Light.${VERSION}
PKGNAME=	sharity-light-${VERSION}
REVISION=	0
CATEGORIES=	net

MASTER_SITES=	http://www.obdev.at/ftp/pub/Products/Sharity-Light/

HOMEPAGE=	http://www.obdev.at/products/sharity-light/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

NO_TEST=	Yes

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
