# $OpenBSD: Makefile,v 1.5 2019/07/14 02:16:51 naddy Exp $

COMMENT=		Microsoft TrueType core fonts

DISTNAME=		msttcorefonts-2.0
REVISION=		2
CATEGORIES=		fonts x11

HOMEPAGE=		http://corefonts.sourceforge.net/

# Font source files have a restrictive license
PERMIT_PACKAGE=		Restrictive license, can't distribute modified files
PERMIT_DISTFILES=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=corefonts/}
DIST_SUBDIR=		${DISTNAME}

BUILD_DEPENDS=		archivers/cabextract

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

DISTFILES=		andale32.exe \
			arial32.exe \
			arialb32.exe \
			comic32.exe \
			courie32.exe \
			georgi32.exe \
			impact32.exe \
			times32.exe \
			trebuc32.exe \
			verdan32.exe \
			wd97vwr32.exe \
			webdin32.exe

INST_DIR=		${PREFIX}/share/fonts/mscorefonts

EXTRACT_CASES=		*.exe) cabextract --lowercase --quiet \
			--directory=${WRKDIST} ${FULLDISTDIR}/$$archive ;;

post-extract:
	@cabextract --lowercase --directory=${WRKDIST} ${WRKDIST}/viewer1.cab

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}
	tr -d \\015 < ${WRKDIST}/licen.txt > ${INST_DIR}/eula.txt

.include <bsd.port.mk>
