# $OpenBSD: Makefile,v 1.8 2000/03/24 23:28:30 espie Exp $
# Original from:	Andreas Klemm <andreas@klemm.gtn.com>

DISTNAME=	ghostscript-5.50
CATEGORIES=	print
NEED_VERSION=	 1.230

DIR=		gnu/gs550

# Eventually, the FSF should wake up...
MASTER_SITE_SUBDIR=     ghostscript
MASTER_SITES= ${GS_SITES} ${MASTER_SITE_GNU}

HOMEPAGE=	http://www.cs.wisc.edu/%7Eghost/

MASTER_SITES0=  http://www.erdw.ethz.ch/%7Ebonk/ftp/gs-driver-distrib/

DISTFILES=	${GS_SOURCES} ${GS_FONTS_STD} ${GS_FONTS_OTHER} \
		${HP850_DRV}:0 

DIST_SUBDIR=	gs

# png and jpeg sources are under a BSD license
LICENSE_TYPE=		GPL BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MAINTAINER=	ports@openbsd.org

JPEGDIR=graphics/jpeg
PNGDIR=graphics/png

BUILD_DEPENDS=	/nonexistent::${JPEGDIR}:patch \
		/nonexistent::${PNGDIR}:patch \
		unzip::archivers/unzip \

LIB_DEPENDS=	png.1.3::${PNGDIR}

EXTRACT_ONLY=	${GS_SOURCES}
WRKDIST=	${WRKDIR}/gs5.50
BASE_FLAGS=	INSTALL_PROGRAM='${INSTALL_SCRIPT}' \
		INSTALL_DATA='${INSTALL_DATA}' \
		SHARE_LIBPNG=1 \
		SHARE_ZLIB=1 \
		XLDFLAGS=-L${PREFIX}/lib \
		XINCLUDE=-I${X11BASE}/include \
		XCFLAGS='${CFLAGS}' \
		XLIBS='Xt SM ICE Xext X11' \
		XLIBDIRS=-L${X11BASE}/lib \
		GLOBJDIR=./objects \
		GLGENDIR=./objects \
		PSOBJDIR=./objects \
		PSGENDIR=./objects \
		DEVICE_DEVS="`cat ${FILESDIR}/devices`"

MAKE_FLAGS=	${BASE_FLAGS} prefix=${PREFIX}
FAKE_FLAGS=	${BASE_FLAGS} prefix=${WRKINST}${PREFIX}
FAKE=		Yes

MAKE_FILE=	unixansi.mak
MAN1=		gs.1 pdf2dsc.1 pdf2ps.1 ps2ascii.1 ps2epsi.1 ps2pdf.1 ps2ps.1

GS_SOURCES=	gnu-gs-5.50.tar.gz
#  Note: the following two are real files that have symlinks with
#  later version numbers pointing to them.  To avoid unnecessarily
#  downloading distfiles, do not change these when upgrading the port
#  unless the files really change.
GS_FONTS_STD=	gnu-gs-fonts-std-5.50.tar.gz
GS_FONTS_OTHER=	gnu-gs-fonts-other-5.50.tar.gz

# Additional driver HP 850, see http://www.erdw.ethz.ch/~bonk/hp850/hp850.html
HP850_DRV=	hp8xxs13.zip

# The pdf_sec.ps non-stub version has been moved to a separate package

.if defined(A4) 
CFLAGS+=	-DA4
PKGNAME=${DISTNAME}-A4
.endif

pre-fetch:
.if !defined(A4)
	@${ECHO_MSG} "Type \"make A4=yes\" if you want -DA4 for compilation."
.else
	@${ECHO_MSG} "Using -DA4 for compilation."
.endif

post-extract:
	ln -s `cd ${PORTSDIR} && cd ${JPEGDIR} && make show VARNAME=WRKDIST` ${WRKSRC}/jpeg
	ln -s `cd ${PORTSDIR} && cd ${PNGDIR} && make show VARNAME=WRKDIST` ${WRKSRC}/libpng
	cd ${WRKSRC} && unzip -Lao ${FULLDISTDIR}/${HP850_DRV} -x devs.mak

pre-build:
	mkdir -p ${WRKSRC}/objects

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/ghostscript 
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/bin 
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	cd ${PREFIX}/share/ghostscript  && \
			tar xzf ${FULLDISTDIR}/${GS_FONTS_STD}
	cd ${PREFIX}/share/ghostscript/fonts && \
			tar xzf ${FULLDISTDIR}/${GS_FONTS_OTHER}

# install the readme and license file of the hp8xxx driver as well
post-install:
	strip ${PREFIX}/bin/gs
	${INSTALL_SCRIPT} ${WRKSRC}/unix-lpr.sh ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/lprsetup.sh ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/license.hp8 \
		${PREFIX}/share/ghostscript/5.50/doc
	${INSTALL_DATA} ${WRKSRC}/readme.hp8 \
		${PREFIX}/share/ghostscript/5.50/doc

.include <bsd.port.mk>
