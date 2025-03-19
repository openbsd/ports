BROKEN-m88k=	out of memory compiling cmu_us_kal_diphone.c

COMMENT=	text to speech utility

GH_ACCOUNT=	festvox
GH_PROJECT=	flite
GH_TAGNAME=	v2.2

# sync shared libs;
# see pre-configure, patch-config_common_make_rules and patch-config_project_mak
SHARED_LIBS +=  flite                     2.0 # 1
SHARED_LIBS +=	flite_cmu_grapheme_lang   2.0 # 1
SHARED_LIBS +=	flite_cmu_grapheme_lex    2.0 # 1
SHARED_LIBS +=	flite_cmu_indic_lang      2.0 # 1
SHARED_LIBS +=	flite_cmu_indic_lex       2.0 # 1
SHARED_LIBS +=	flite_cmu_time_awb        2.0 # 1
SHARED_LIBS +=	flite_cmu_us_awb          2.0 # 1
SHARED_LIBS +=	flite_cmu_us_kal          2.0 # 1
SHARED_LIBS +=	flite_cmu_us_kal16        2.0 # 1
SHARED_LIBS +=	flite_cmu_us_rms          2.0 # 1
SHARED_LIBS +=	flite_cmu_us_slt          2.0 # 1
SHARED_LIBS +=	flite_cmulex              2.0 # 1
SHARED_LIBS +=	flite_usenglish           2.0 # 1

CATEGORIES=	audio

HOMEPAGE=	http://www.festvox.org/flite/

PERMIT_PACKAGE=	Yes

WANTLIB += c m sndio

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--enable-shared \
		--with-audio=sndio

USE_GMAKE=	Yes
NO_TEST=	Yes

post-extract:
	cp ${FILESDIR}/au_sndio.c ${WRKSRC}/src/audio

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{config/project.mak,include/flite_version.h}

.include <bsd.port.mk>
