# $OpenBSD

COMMENT=		"Microsoft TrueType core fonts"

DISTNAME=		msttcorefonts-1.2
DISTFILES=		${FONTS}
CATEGORIES=		x11

HOMEPAGE=		http://corefonts.sourceforge.net/

MAINTAINER=		Steve Shockley <steve.shockley@shockley.net>

# Font source files have a restrictive license
PERMIT_PACKAGE_CDROM=	"Restrictive license, can't distribute modified files"
PERMIT_PACKAGE_FTP=	"Restrictive license, can't distribute modified files"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=corefonts/}

BUILD_DEPENDS=		cabextract:cabextract-*:archivers/cabextract

USE_X11=		Yes

NO_BUILD=		Yes

FONTS=			andale32.exe \
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

do-extract:
.for fontfile in ${FONTS}
	${LOCALBASE}/bin/cabextract ${DISTDIR}/${fontfile} --lowercase --directory=${WRKDIST}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}; \
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}; \
	${X11BASE}/bin/mkfontscale ${INST_DIR}; \
	${X11BASE}/bin/mkfontdir ${INST_DIR};
	tr -d \\015 < ${WRKDIST}/licen.txt > "${INST_DIR}/eula.txt"

.include <bsd.port.mk>
