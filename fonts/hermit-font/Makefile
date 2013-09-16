# $OpenBSD: Makefile,v 1.1.1.1 2013/09/16 21:51:45 abieber Exp $

COMMENT=	clear, readable monospaced font

DISTNAME=	hermit-1.01
PKGNAME=	hermit-font-1.01
EXTRACT_SUFX=	.zip
CATEGORIES=	fonts x11

# OFL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE=	http://pcaro.es/p/hermit/
MASTER_SITES=	http://www.deftly.net/

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=	${PREFIX}/lib/X11/fonts/hermit/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA}	${WRKSRC}/*.ttf ${INST_DIR}
	${INSTALL_DATA}	${WRKSRC}/*.otf ${INST_DIR}

.include <bsd.port.mk>
