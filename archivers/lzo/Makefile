# $OpenBSD: Makefile,v 1.26 2001/10/24 20:45:43 brad Exp $

COMMENT=	"portable speedy lossless data compression library"

DISTNAME=	lzo-1.07
CATEGORIES=	archivers devel
NEED_VERSION=	1.460
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
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/acconfig
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

# Internal Compiler Error
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup-sparc64
.endif

REGRESS_TARGET=	test

post-patch:
	@cd ${WRKSRC}/acconfig; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh
	@chmod +x ${WRKSRC}/acconfig/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
