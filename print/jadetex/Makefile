# $OpenBSD: Makefile,v 1.4 2001/04/17 20:51:46 avsm Exp $

COMMENT=		"macros for the OpenJade DSSSL TeX backend"

DISTNAME=		jadetex-3.6
CATEGORIES=     	print
NEED_VERSION=		1.364

HOMEPAGE=		http://www.tug.org/applications/jadetex/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.tug.org/applications/jadetex/
EXTRACT_SUFX=		.zip
WRKDIST=		${WRKDIR}/jadetex

LIB_DEPENDS=		png.1::graphics/png
BUILD_DEPENDS=		tex::print/teTeX/base \
			${LOCALBASE}/share/texmf/web2c/texmf.cnf::print/teTeX/texmf
RUN_DEPENDS=		${RUN_DEPENDS}

ALL_TARGET=		default
TEXMFLOC=		${PREFIX}/share/texmf

pre-fake:
	${INSTALL_DATA_DIR} ${TEXMFLOC}/web2c
	${INSTALL_DATA_DIR} ${TEXMFLOC}/tex

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pdfjadetex.fmt ${TEXMFLOC}/web2c
	${INSTALL_DATA} ${WRKBUILD}/jadetex.fmt ${TEXMFLOC}/web2c
	${INSTALL_DATA_DIR} ${TEXMFLOC}/tex/jadetex
	${INSTALL_DATA} ${WRKBUILD}/dsssl.def ${TEXMFLOC}/tex/jadetex
	${INSTALL_DATA} ${WRKBUILD}/jadetex.ltx ${TEXMFLOC}/tex/jadetex
	ln -s ${TRUEPREFIX}/bin/tex ${PREFIX}/bin/jadetex
	ln -s ${TRUEPREFIX}/bin/pdftex ${PREFIX}/bin/pdfjadetex

.include <bsd.port.mk>
