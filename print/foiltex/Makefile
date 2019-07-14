# $OpenBSD: Makefile,v 1.20 2019/07/14 00:39:39 naddy Exp $

COMMENT=	LaTeX2e class for overhead transparencies

DISTNAME=	foiltex-2.1.4b
REVISION=	2
CATEGORIES=	print

PERMIT_PACKAGE=	Yes

EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=macros/latex/contrib/foiltex/}

DISTFILES=	foiltex.ins foiltex.dtx
DIST_SUBDIR=	${DISTNAME}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	print/texlive/base

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

NO_TEST=	Yes

.include <bsd.port.mk>
