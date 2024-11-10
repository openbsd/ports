PKG_ARCH=	*

COMMENT=	high quality Japanese truetype fonts

DISTNAME=	mixfont-mplus-ipa-TrueType-20060520p1
PKGNAME=	mixfont-mplus-ipa-20060520
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	fonts japanese x11
REVISION=	8

# BSD
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://ja.osdn.net/projects/mix-mplus-ipa/
SITES=		${SITE_OSDN_JP:=mix-mplus-ipa/25997/}

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=		${PREFIX}/share/fonts/mixfont-mplus-ipa/
FONTSDIR=		${WRKSRC}/opfc-ModuleHP-1.1.1_withIPAFonts_and_Mplus/fonts/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA}	${FONTSDIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
