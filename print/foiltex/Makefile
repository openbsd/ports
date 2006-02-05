# $OpenBSD: Makefile,v 1.9 2006/02/05 10:17:19 steven Exp $

COMMENT=	"LaTeX2e class for overhead transparencies"

DISTNAME=	foiltex-2.1.4a
PKGNAME=	${DISTNAME}p3
CATEGORIES=	print

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

PERMIT_PACKAGE_CDROM=	"not-for-profit redistribution only"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"not-for-profit redistribution only"
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=nonfree/macros/latex/contrib/foiltex/}

DISTFILES=	foiltex.ins foiltex.dtx
DIST_SUBDIR=	${DISTNAME}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:teTeX_base->=3:print/teTeX/base

CLS_DIR=	${PREFIX}/share/texmf-local/tex/latex/foiltex
DOC_DIR=	${PREFIX}/share/texmf-local/doc/latex/foiltex

pre-extract:
		@mkdir -p ${WRKDIST}

do-build:
		@cd ${WRKBUILD}; latex foiltex.ins; \
			latex foiltex.dtx; latex foiltex.dtx; \
			latex foiltex.dtx

do-install:
		${INSTALL_DATA_DIR} ${CLS_DIR} ${DOC_DIR}
		${INSTALL_DATA} ${WRKDIST}/{foils.cls,foil*.clo,fltfonts.def,foils.sty} ${CLS_DIR}
		${INSTALL_DATA} ${WRKDIST}/{foiltex.{dvi,dtx},sampfoil.tex} ${DOC_DIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
