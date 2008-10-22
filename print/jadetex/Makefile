# $OpenBSD: Makefile,v 1.23 2008/10/22 05:15:42 steven Exp $

COMMENT=		macros for the OpenJade DSSSL TeX backend

DISTNAME=		jadetex-3.13
PKGNAME=		${DISTNAME}p1
CATEGORIES=     	print

HOMEPAGE=		http://jadetex.sourceforge.net/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=jadetex/}

RUN_DEPENDS=		::print/texlive/texmf,-tetex
BUILD_DEPENDS=		${RUN_DEPENDS}

ALL_TARGET=		jadetex.fmt pdfjadetex.fmt
TEXMFLOC=		${PREFIX}/share/texmf-local

NO_REGRESS=		Yes

pre-fake:
	${INSTALL_DATA_DIR} ${TEXMFLOC}/web2c
	${INSTALL_DATA_DIR} ${TEXMFLOC}/tex

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pdfjadetex.fmt ${TEXMFLOC}/web2c
	${INSTALL_DATA} ${WRKBUILD}/jadetex.fmt ${TEXMFLOC}/web2c
	${INSTALL_DATA_DIR} ${TEXMFLOC}/tex/jadetex
	${INSTALL_DATA} ${WRKBUILD}/dsssl.def ${TEXMFLOC}/tex/jadetex
	${INSTALL_DATA} ${WRKBUILD}/jadetex.ltx ${TEXMFLOC}/tex/jadetex
	${INSTALL_MAN} ${WRKBUILD}/jadetex.1 ${PREFIX}/man/man1/jadetex.1
	${INSTALL_MAN} ${WRKBUILD}/pdfjadetex.1 ${PREFIX}/man/man1/pdfjadetex.1
	ln -s ${TRUEPREFIX}/bin/etex ${PREFIX}/bin/jadetex
	ln -s ${TRUEPREFIX}/bin/pdfetex ${PREFIX}/bin/pdfjadetex

.include <bsd.port.mk>
