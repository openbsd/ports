# $OpenBSD: Makefile,v 1.2 2007/06/06 12:47:56 ajacoutot Exp $

COMMENT=	"high quality japanese truetype fonts"

DISTNAME=	mixfont-mplus-ipa-TrueType-20060520
PKGNAME=	mplus-ttf-20060520
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	japanese x11

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://mix-mplus-ipa.sourceforge.jp/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=mix-mplus-ipa/20216/}

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes

INST_DIR=		${PREFIX}/lib/X11/fonts/mplus/
FONTSDIR=		${WRKSRC}/opfc-ModuleHP-1.1.1_withIPAFonts_and_Mplus/fonts/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA}	${FONTSDIR}/*.ttf ${INST_DIR}
	${X11BASE}/bin/mkfontscale ${INST_DIR}
	${X11BASE}/bin/mkfontdir ${INST_DIR}

.include <bsd.port.mk>
