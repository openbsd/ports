# $OpenBSD: Makefile,v 1.1.1.1 2002/09/01 20:24:12 naddy Exp $

COMMENT=	"LaTeX2e class for overhead transparencies"

DISTNAME=	foiltex-2.1.3
CATEGORIES=	print

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

PERMIT_PACKAGE_CDROM=	"not-for-profit redistribution only"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"not-for-profit redistribution only"
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=nonfree/macros/latex/contrib/supported/foiltex/}

DISTFILES=	foiltex.ins foiltex.dtx

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:teTeX_base-*:print/teTeX/base

CLS_DIR=	${PREFIX}/share/texmf.local/tex/latex/foiltex
DOC_DIR=	${PREFIX}/share/texmf.local/doc/latex/foiltex

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
