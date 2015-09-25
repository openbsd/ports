# $OpenBSD: Makefile,v 1.4 2015/09/25 12:50:08 sthen Exp $

PKG_ARCH=	*

COMMENT=	clear, readable monospaced font

DISTNAME=	otf-hermit-1.21
PKGNAME=	hermit-font-1.21
CATEGORIES=	fonts x11
REVISION=	1

# OFL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE=	https://pcaro.es/p/hermit/
MASTER_SITES=	https://pcaro.es/d/

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=	${PREFIX}/share/fonts/hermit/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA}	${WRKDIR}/*.otf ${INST_DIR}

.include <bsd.port.mk>
