# $OpenBSD: Makefile,v 1.19 2000/11/17 21:33:43 brad Exp $

DISTNAME=	lzo-1.07
CATEGORIES=	archivers devel
NEED_VERSION=	1.336
MASTER_SITES=	http://wildsau.idv.uni-linz.ac.at/mfx/download/lzo/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/compression

HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

test:	build
	@cd ${WRKBUILD} && ${MAKE} test

post-patch:
	@chmod +x ${WRKSRC}/acconfig/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
