# $OpenBSD: Makefile,v 1.2 2000/03/19 00:24:19 espie Exp $

DISTNAME=	ghostscript-6.0
CATEGORIES=	print

DIR=		aladdin/gs600
MASTER_SITES=	${GS_SITES}

HOMEPAGE=	http://www.cs.wisc.edu/%7Eghost/

MASTER_SITES0=  http://www.erdw.ethz.ch/%7Ebonk/ftp/gs-driver-distrib/

MASTER_SITE_SUBDIR=     ghostscript
DISTFILES=	${GS_SOURCES} ${GS_FONTS_STD} \
		${HP850_DRV}:0 

DIST_SUBDIR=	gs

# Aladdin license 
LICENSE_TYPE=		COPY GPL BSD
# Aladdin ghostscript wants a fee for redistribution
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

NEED_VERSION=	1.218

MAINTAINER=	ports@openbsd.org

JPEGDIR=graphics/jpeg
PNGDIR=graphics/png

BUILD_DEPENDS=	/nonexistent:${JPEGDIR}:patch \
		/nonexistent:${PNGDIR}:patch \
		unzip:archivers/unzip \

LIB_DEPENDS=	png.1.3:${PNGDIR}

EXTRACT_ONLY=	${GS_SOURCES}
WRKDIST=	${WRKDIR}/gs6.0
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
		STDLIBS='-lc_r -lm' 

MAKE_FLAGS=	${BASE_FLAGS} prefix=${PREFIX}


MAKE_FILE=	src/unixansi.mak

GS_SOURCES=	ghostscript-6.0.tar.gz
#  Note: the following two are real files that have symlinks with
#  later version numbers pointing to them.  To avoid unnecessarily
#  downloading distfiles, do not change these when upgrading the port
#  unless the files really change.
GS_FONTS_STD=	ghostscript-fonts-std-6.0.tar.gz

# Additional driver HP 850, see http://www.erdw.ethz.ch/~bonk/hp850/hp850.html
HP850_DRV=	hp8xxs13.zip

# The pdf_sec.ps non-stub version has been moved to a separate package

.if defined(A4) 
CFLAGS+=	-DA4
PKGNAME=${DISTNAME}-A4
.endif

FAKE=Yes
FAKE_FLAGS=${BASE_FLAGS} prefix=${WRKINST}${PREFIX}

post-extract:
	ln -s `cd ${PORTSDIR} && cd ${JPEGDIR} && make show VARNAME=WRKDIST` ${WRKDIST}/jpeg
	ln -s `cd ${PORTSDIR} && cd ${PNGDIR} && make show VARNAME=WRKDIST` ${WRKDIST}/libpng
	cd ${WRKDIST} && unzip -Lao ${FULLDISTDIR}/${HP850_DRV} -x devs.mak

post-patch:
	@echo "DEVICES_DEVS:=`cat ${FILESDIR}/devices`" >>${WRKSRC}/${MAKE_FILE}

pre-build:
	mkdir -p ${WRKSRC}/objects
	mkdir -p ${WRKSRC}/bin

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/ghostscript 
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/bin 
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	cd ${PREFIX}/share/ghostscript  && \
			tar xzf ${FULLDISTDIR}/${GS_FONTS_STD}

# install the readme and license file of the hp8xxx driver as well
post-install:
	strip ${PREFIX}/bin/gs
	${INSTALL_DATA} ${WRKSRC}/license.hp8 \
		${PREFIX}/share/ghostscript/6.0/doc
	${INSTALL_DATA} ${WRKSRC}/readme.hp8 \
		${PREFIX}/share/ghostscript/6.0/doc

.include <bsd.port.mk>
