# $OpenBSD: Makefile,v 1.9 2013/06/21 19:58:28 brad Exp $

COMMENT=		Device Tree Compiler

DISTNAME=		dtc-1.3.0
CATEGORIES=		sysutils devel
MASTER_SITES=		http://comstyle.com/source/
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS=		fdt	1.0

HOMEPAGE=		http://www.jdl.com/

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
