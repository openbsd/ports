# $OpenBSD: Makefile,v 1.12 2000/03/09 09:52:55 brad Exp $

DISTNAME=	lzo-1.06
CATEGORIES=	archivers devel
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.rhrz.uni-bonn.de/pub-koeln/util/arc/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/archivers/lzo/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= libs/compression

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-extract:
	@chmod +x ${WRKSRC}/acconfig/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
