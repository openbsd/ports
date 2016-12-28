# $OpenBSD: Makefile,v 1.2 2016/12/28 08:50:55 jca Exp $

LANGS=			afr amh ara asm aze aze_cyrl bel ben bod bos bul cat \
			ceb ces chi_sim chi_tra chr cym dan dan_frak deu \
			deu_frak dzo ell enm epo equ est eus fas fin fra frk \
			frm gle glg grc guj hat heb hin hrv hun iku ind isl \
			ita ita_old jav jpn kan kat kat_old kaz khm kir kor \
			kur lao lat lav lit mal mar mkd mlt msa mya nep nld \
			nor ori osd pan pol por pus ron rus san sin slk \
			slk_frak slv spa spa_old sqi srp srp_latn swa swe syr \
			tam tel tgk tgl tha tir tur uig ukr urd uzb uzb_cyrl \
			vie yid

COMMENT-main=		${l} language data for Tesseract
PKGNAME-main=		tesseract-eng-${GH_TAGNAME}
MULTI_PACKAGES=		-main

EPOCH-main=		0
EPOCH-dan=		0
EPOCH-fra=		0
EPOCH-lav=		0
EPOCH-ron=		0
EPOCH-swe=		0
EPOCH-bul=		0
EPOCH-dan_frak=		0
EPOCH-hun=		0
EPOCH-lit=		0
EPOCH-rus=		0
EPOCH-tgl=		0
EPOCH-cat=		0
EPOCH-deu=		0
EPOCH-ind=		0
EPOCH-nld=		0
EPOCH-slk=		0
EPOCH-tur=		0
EPOCH-ces=		0
EPOCH-ell=		0
EPOCH-ita=		0
EPOCH-nor=		0
EPOCH-slv=		0
EPOCH-ukr=		0
EPOCH-chi_sim=		0
EPOCH-jpn=		0
EPOCH-pol=		0
EPOCH-spa=		0
EPOCH-vie=		0
EPOCH-chi_tra=		0
EPOCH-fin=		0
EPOCH-kor=		0
EPOCH-por=		0
EPOCH-srp=		0

.for l in ${LANGS}
COMMENT-${l}=		${l} language data for Tesseract
PKGNAME-${l}=		tesseract-${l}-${GH_TAGNAME}
MULTI_PACKAGES +=	-${l}
.endfor

GH_PROJECT=		tessdata

PKG_ARCH=		*
NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tessdata/
	${INSTALL_DATA} ${WRKSRC}/*.traineddata ${PREFIX}/share/tessdata/

.include <bsd.port.mk>
