# $OpenBSD: Makefile,v 1.10 2002/06/09 05:37:07 wilfried Exp $

COMMENT=		"macros for the OpenJade DSSSL TeX backend"

DISTNAME=		jadetex-3.11
CATEGORIES=     	print
NEED_VERSION=		1.528

HOMEPAGE=		http://jadetex.sourceforge.net/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=jadetex/}

WRKDIST=		${WRKDIR}/jadetex

LIB_DEPENDS=		png.2::graphics/png
BUILD_DEPENDS=		:teTeX_base-*:print/teTeX/base \
			:teTeX_texmf-*:print/teTeX/texmf
RUN_DEPENDS=		${BUILD_DEPENDS}

ALL_TARGET=		jadetex.fmt pdfjadetex.fmt
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
