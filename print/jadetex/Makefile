# $OpenBSD: Makefile,v 1.1.1.1 2000/09/13 15:05:00 avsm Exp $

DISTNAME=		jadetex-2.20
CATEGORIES=     	print
NEED_VERSION=		1.330

HOMEPAGE=		http://www.tug.org/applications/jadetex/
MAINTAINER=		avsm@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.tug.org/applications/jadetex/
EXTRACT_SUFX=		.zip
WRKDIST=		${WRKDIR}

LIB_DEPENDS=		png.1::graphics/png
RUN_DEPENDS=		${PREFIX}/bin/tex::print/teTeX/texmf
BUILD_DEPENDS=		${PREFIX}/bin/tex::print/teTeX/texmf \
			${PREFIX}/bin/openjade::textproc/openjade

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
