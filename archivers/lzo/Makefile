# $OpenBSD: Makefile,v 1.16 2000/08/03 13:24:05 brad Exp $

DISTNAME=	lzo-1.06
CATEGORIES=	archivers devel
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.rhrz.uni-bonn.de/pub-koeln/util/arc/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/archivers/lzo/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/compression

HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo.html

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-extract:
	@chmod +x ${WRKSRC}/acconfig/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
