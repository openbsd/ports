# $OpenBSD: Makefile,v 1.10 2015/06/03 20:17:04 uaa Exp $

COMMENT=		Device Tree Compiler

DISTNAME=		dtc-1.4.1
CATEGORIES=		sysutils devel
MASTER_SITES=		http://www.kernel.org/pub/software/utils/dtc/
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS=		fdt	1.1

HOMEPAGE=		http://devicetree.org/Device_Tree_Compiler

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=		devel/bison \
			devel/flex

MAKE_ENV+=		V=1
MAKE_FLAGS+=		PREFIX="${PREFIX}"

USE_GMAKE=		Yes

TEST_TARGET= 		check

post-extract:
	@ln -s ${LOCALBASE}/bin/gflex ${WRKDIR}/bin/flex
	@perl -pi -e 's,#! /bin/bash,#!${LOCALBASE}/bin/bash,' \
	    ${WRKSRC}/dtdiff

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dtc
	${INSTALL_DATA} ${WRKSRC}/Documentation/*.txt \
	    ${PREFIX}/share/doc/dtc

.include <bsd.port.mk>
