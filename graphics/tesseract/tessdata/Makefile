# $OpenBSD: Makefile,v 1.6 2021/08/31 12:26:42 ajacoutot Exp $

GH_TAGNAME=		4.1.0

LANGS=			afr amh ara asm aze aze_cyrl bel ben bod bos bre bul \
			cat ceb ces chi_sim chi_sim_vert chi_tra chi_tra_vert \
			chr cos cym dan deu div dzo ell enm epo equ est eus \
			fao fas fil fin fra frk frm fry gla gle glg grc guj \
			hat heb hin hrv hun hye iku ind isl ita ita_old jav \
			jpn jpn_vert kan kat kat_old kaz khm kir kmr kor \
			kor_vert lao lat lav lit ltz mal mar mkd mlt mon mri \
			msa mya nep nld nor oci ori osd pan pol por pus que \
			ron rus san sin slk slv snd spa spa_old sqi srp \
			srp_latn sun swa swe syr tam tat tel tgk tha tir ton \
			tur uig ukr urd uzb uzb_cyrl vie yid yor

COMMENT-main=		eng language data for Tesseract
PKGNAME-main=		tesseract-eng-${GH_TAGNAME}
MULTI_PACKAGES=		-main

EPOCH=			0

.for l in ${LANGS}
COMMENT-${l}=		${l} language data for Tesseract
PKGNAME-${l}=		tesseract-${l}-${GH_TAGNAME}
MULTI_PACKAGES +=	-${l}
.endfor

GH_PROJECT=		tessdata_fast

PKG_ARCH=		*
NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tessdata/
	${INSTALL_DATA} ${WRKSRC}/*.traineddata ${PREFIX}/share/tessdata/

.include <bsd.port.mk>
