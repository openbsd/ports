# $OpenBSD: Makefile,v 1.13 2018/10/17 08:27:44 ajacoutot Exp $

COMMENT=		Device Tree Compiler

DISTNAME=		dtc-1.4.7
CATEGORIES=		sysutils devel
MASTER_SITES=		http://www.kernel.org/pub/software/utils/dtc/
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS=		fdt	3.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=		devel/bison

MAKE_ENV+=		V=1
MAKE_FLAGS+=		PREFIX="${PREFIX}" LIBDL=""

USE_GMAKE=		Yes

TEST_TARGET= 		check

post-extract:
	@perl -pi -e 's,#! /bin/bash,#!${LOCALBASE}/bin/bash,' \
	    ${WRKSRC}/dtdiff

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dtc
	${INSTALL_DATA} ${WRKSRC}/Documentation/*.txt \
	    ${PREFIX}/share/doc/dtc

.include <bsd.port.mk>
