# $OpenBSD: Makefile,v 1.3 2013/03/11 11:06:05 espie Exp $

COMMENT=	high quality japanese truetype fonts

DISTNAME=	mixfont-mplus-ipa-TrueType-20060520
PKGNAME=	ja-mplus-ttf-20060520
REVISION=	2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	fonts japanese x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=	http://mix-mplus-ipa.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=mix-mplus-ipa/20216/}

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=		${PREFIX}/lib/X11/fonts/mplus/
FONTSDIR=		${WRKSRC}/opfc-ModuleHP-1.1.1_withIPAFonts_and_Mplus/fonts/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA}	${FONTSDIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
