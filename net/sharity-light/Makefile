# $OpenBSD: Makefile,v 1.11 2000/06/20 15:51:20 espie Exp $
# $FreeBSD: Makefile,v 1.10 1999/01/06 17:11:23 dt Exp $

DISTNAME=	Sharity-Light.1.2
PKGNAME=	sharity-light-1.2
CATEGORIES=	net
NEED_VERSION=	1.195
MASTER_SITES=	ftp://ftp.obdev.at/pub/Products/Sharity-Light/	\
		ftp://ftp.warpnet.ro/mirrors/ftp.obdev.at/pub/Products/Sharity-Light/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	ARCH="" THE_CC="${CC}" CFLAGS="${CFLAGS} -Wall"

post-extract:
	@mkdir -p ${WRKSRC}/unshlight
	@cp -f ${FILESDIR}/unshlight.c ${WRKSRC}/unshlight
	@cp -f ${FILESDIR}/Makefile.unshlight ${WRKSRC}/unshlight/Makefile

post-build:
	@cd ${WRKSRC}/unshlight && ${SETENV} ${MAKE_ENV} make ${MAKE_FLAGS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Sharity-Light
	${INSTALL_PROGRAM} ${WRKSRC}/shlight ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/unshlight/unshlight ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/Sharity-Light
	${INSTALL_DATA} ${WRKSRC}/FAQ.txt ${PREFIX}/share/doc/Sharity-Light/FAQ
	${INSTALL_MAN} ${WRKSRC}/smbmount.8 ${PREFIX}/man/man8/sh-smbmount.8

.include <bsd.port.mk>
