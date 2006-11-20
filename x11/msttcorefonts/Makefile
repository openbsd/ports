# $OpenBSD: Makefile,v 1.9 2006/11/20 12:28:48 espie Exp $

COMMENT=		"Microsoft TrueType core fonts"

DISTNAME=		msttcorefonts-1.2
CATEGORIES=		x11

HOMEPAGE=		http://corefonts.sourceforge.net/

MAINTAINER=		Steve Shockley <steve.shockley@shockley.net>

# Font source files have a restrictive license
PERMIT_PACKAGE_CDROM=	"Restrictive license, can't distribute modified files"
PERMIT_PACKAGE_FTP=	"Restrictive license, can't distribute modified files"
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=corefonts/}
DIST_SUBDIR=		${DISTNAME}

BUILD_DEPENDS=		:cabextract-*:archivers/cabextract

USE_X11=		Yes

NO_BUILD=		Yes
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
			webdin32.exe

INST_DIR=		${PREFIX}/lib/X11/fonts/mscorefonts

EXTRACT_CASES=		*.exe) cabextract ${FULLDISTDIR}/$$archive \
			--lowercase --quiet --directory=${WRKDIST} ;;

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}
	${X11BASE}/bin/mkfontscale ${INST_DIR}
	${X11BASE}/bin/mkfontdir ${INST_DIR}
	tr -d \\015 < ${WRKDIST}/licen.txt > ${INST_DIR}/eula.txt

.include <bsd.port.mk>
