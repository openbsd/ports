# $OpenBSD: Makefile,v 1.29 2002/10/09 14:14:40 brad Exp $

COMMENT=	"portable speedy lossless data compression library"

DISTNAME=	lzo-1.08
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

# Internal Compiler Error
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* sup-sparc64
.endif

REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lzo
	${INSTALL_DATA}	${WRKSRC}/doc/* ${PREFIX}/share/doc/lzo

.include <bsd.port.mk>
