# $OpenBSD: Makefile,v 1.2 1999/06/01 23:38:22 brad Exp $

DISTNAME=	lzo-1.04
CATEGORIES=	archivers devel
MASTER_SITES= 	ftp://ftp.uni-koeln.de/util/arc/ \
		ftp://ftp.rhrz.uni-bonn.de/pub-koeln/util/arc/ \
		ftp://ftp.all.de/pub/unix/tools/archivers/lzo/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/archivers/lzo/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=libs/compression

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-extract:
	@chmod +x ${WRKSRC}/acconfig/*

post-install:
	${MKDIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
