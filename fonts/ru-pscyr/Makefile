# $OpenBSD: Makefile,v 1.9 2019/07/14 00:39:36 naddy Exp $

COMMENT=		cyrillic PostScript Type1 fonts to use with TeX

DISTNAME=		pscyr-0.4c_patch2
PKGNAME=		ru-${DISTNAME}
REVISION=		9
CATEGORIES=		fonts print

# Free redistribution is permitted without fonts files modifications
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://tex.imm.uran.ru/texserver/fonts/pscyr/ \
			ftp://ftp.vsu.ru/pub/tex/font-packs/pscyr/
DISTFILES=		PSCyr-0.4c-patch2-tex.tar.gz \
			PSCyr-0.4c-patch2-type1.tar.gz

RUN_DEPENDS=		print/texlive/base \
			print/texlive/texmf,-context

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

TEXMF_DIR=		${PREFIX}/share/texmf-local

do-install:
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/map/dvips/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/map/dvipdfm/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/enc/dvips/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/tex/latex/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/tfm/public/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/vf/public/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/type1/public/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/fonts/afm/public/pscyr
	${INSTALL_DATA_DIR} ${TEXMF_DIR}/doc/fonts/pscyr
	${INSTALL_DATA} ${WRKDIR}/dvips/base/t2a.enc \
	    ${TEXMF_DIR}/fonts/enc/dvips/pscyr
	${INSTALL_DATA} ${WRKDIR}/dvips/config/pscyr.map \
	    ${TEXMF_DIR}/fonts/map/dvips/pscyr
	${INSTALL_DATA} ${WRKDIR}/dvipdfm/base/pscyr2.map \
	    ${TEXMF_DIR}/fonts/map/dvipdfm/pscyr
	${INSTALL_DATA} ${WRKDIR}/tex/latex/pscyr/* \
	    ${TEXMF_DIR}/tex/latex/pscyr
	${INSTALL_DATA} ${WRKDIR}/fonts/tfm/public/pscyr/* \
	    ${TEXMF_DIR}/fonts/tfm/public/pscyr
	${INSTALL_DATA} ${WRKDIR}/fonts/vf/public/pscyr/* \
	    ${TEXMF_DIR}/fonts/vf/public/pscyr
	${INSTALL_DATA} ${WRKDIR}/fonts/type1/public/pscyr/* \
	    ${TEXMF_DIR}/fonts/type1/public/pscyr
	${INSTALL_DATA} ${WRKDIR}/fonts/afm/public/pscyr/* \
	    ${TEXMF_DIR}/fonts/afm/public/pscyr
	${INSTALL_DATA} ${WRKDIR}/{LICENSE,doc/README.koi,doc/PROBLEMS} \
	    ${TEXMF_DIR}/doc/fonts/pscyr

.include <bsd.port.mk>
