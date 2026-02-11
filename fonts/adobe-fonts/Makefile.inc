CATEGORIES ?=	fonts/adobe-fonts x11

MODULES ?=	font

HOMEPAGE ?=	https://adobe-fonts.github.io/${ADOBE_PROJECT}/
SITES = https://github.com/adobe-fonts/${ADOBE_PROJECT}/releases/download/${ADOBE_TAGNAME}/

MODFONT_FAMILY ?=	adobe-${ADOBE_PROJECT}

# SIL OFL 1.1
PERMIT_PACKAGE ?=	Yes

DIST_SUBDIR ?=	adobe-fonts

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

SUBST_VARS +=	VERSION VERSION_I
