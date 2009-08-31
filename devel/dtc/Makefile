# $OpenBSD: Makefile,v 1.3 2009/08/31 16:17:14 ajacoutot Exp $

COMMENT=		Device Tree Compiler

DISTNAME=		dtc-0.1
PKGNAME=		${DISTNAME}p0

CATEGORIES=		sysutils devel

HOMEPAGE=		http://www.jdl.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nedbsd.eu/~jasper/distfiles/

WANTLIB += c

BUILD_DEPENDS=		::devel/bison

USE_GMAKE=		Yes
MAKE_ENV+=		V=1

REGRESS_TARGET= 	check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{convert-dtsv0,ftdump,dtc} ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libfdt/{lib,}fdt.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libfdt/libfdt.{a,so} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dtc
	${INSTALL_DATA} ${WRKSRC}/Documentation/*.txt ${PREFIX}/share/doc/dtc

.include <bsd.port.mk>
