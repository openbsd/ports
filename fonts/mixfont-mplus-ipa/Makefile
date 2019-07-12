# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:12 sthen Exp $

PKG_ARCH=	*

COMMENT=	high quality Japanese truetype fonts

DISTNAME=	mixfont-mplus-ipa-TrueType-20060520
PKGNAME=	mixfont-mplus-ipa-20060520
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	fonts japanese x11
REVISION=	7

# BSD
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://mix-mplus-ipa.osdn.jp/
MASTER_SITES=	${MASTER_SITE_OSDN_JP:=mix-mplus-ipa/20216/}

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=		${PREFIX}/share/fonts/mixfont-mplus-ipa/
FONTSDIR=		${WRKSRC}/opfc-ModuleHP-1.1.1_withIPAFonts_and_Mplus/fonts/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA}	${FONTSDIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
