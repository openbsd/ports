# $OpenBSD: Makefile,v 1.8 2000/10/16 17:50:14 espie Exp $

DISTNAME=	ghostscript-6.01
CATEGORIES=	print lang
NEED_VERSION=	1.241

DIR=		aladdin/gs601
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


MAINTAINER=	ports@openbsd.org

JPEGDIR=graphics/jpeg
PNGDIR=graphics/png

BUILD_DEPENDS=	/nonexistent::${JPEGDIR}:patch \
		/nonexistent::${PNGDIR}:patch \
		unzip::archivers/unzip \

LIB_DEPENDS=	png.1::${PNGDIR}

EXTRACT_ONLY=	${GS_SOURCES}
WRKDIST=	${WRKDIR}/gs6.01
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

BASE_FLAGS+=	DEVICE_DEVS='\
$$(DD)x11.dev $$(DD)x11alpha.dev $$(DD)x11cmyk.dev $$(DD)x11cmyk2.dev \
$$(DD)x11cmyk4.dev $$(DD)x11cmyk8.dev $$(DD)x11gray2.dev \
$$(DD)x11gray4.dev $$(DD)x11mono.dev $$(DD)cljet5.dev $$(DD)deskjet.dev \
$$(DD)djet500.dev $$(DD)laserjet.dev $$(DD)ljet2p.dev $$(DD)ljet3.dev \
$$(DD)ljet3d.dev $$(DD)ljet4.dev $$(DD)ljetplus.dev $$(DD)lj5mono.dev \
$$(DD)lj5gray.dev $$(DD)lp2563.dev $$(DD)oce9050.dev $$(DD)faxg3.dev \
$$(DD)faxg32d.dev $$(DD)faxg4.dev $$(DD)tiffcrle.dev $$(DD)tiffg3.dev \
$$(DD)tiffg32d.dev $$(DD)tiffg4.dev $$(DD)epswrite.dev $$(DD)pdfwrite.dev \
$$(DD)pswrite.dev $$(DD)pxlmono.dev $$(DD)pxlcolor.dev $$(DD)bit.dev \
$$(DD)bitrgb.dev $$(DD)bitcmyk.dev $$(DD)bmpmono.dev $$(DD)bmp16.dev \
$$(DD)bmp256.dev $$(DD)bmp16m.dev $$(DD)cgmmono.dev $$(DD)cgm8.dev \
$$(DD)cgm24.dev $$(DD)jpeg.dev $$(DD)jpeggray.dev $$(DD)miff24.dev \
$$(DD)pcxmono.dev $$(DD)pcxgray.dev $$(DD)pcx16.dev $$(DD)pcx256.dev \
$$(DD)pcx24b.dev $$(DD)pcxcmyk.dev $$(DD)pbm.dev $$(DD)pbmraw.dev \
$$(DD)pgm.dev $$(DD)pgmraw.dev $$(DD)pgnm.dev $$(DD)pgnmraw.dev \
$$(DD)pnm.dev $$(DD)pnmraw.dev $$(DD)ppm.dev $$(DD)ppmraw.dev \
$$(DD)pkm.dev $$(DD)pkmraw.dev $$(DD)plan9bm.dev $$(DD)pngmono.dev \
$$(DD)pnggray.dev $$(DD)png16.dev $$(DD)png256.dev $$(DD)png16m.dev \
$$(DD)psmono.dev $$(DD)psgray.dev $$(DD)psrgb.dev $$(DD)tiff12nc.dev \
$$(DD)tiff24nc.dev $$(DD)tifflzw.dev $$(DD)tiffpack.dev $$(DD)ap3250.dev \
$$(DD)appledmp.dev $$(DD)bj10e.dev $$(DD)bj200.dev $$(DD)bjc600.dev \
$$(DD)bjc800.dev $$(DD)ccr.dev $$(DD)cdeskjet.dev $$(DD)cdjcolor.dev \
$$(DD)cdjmono.dev $$(DD)cdj500.dev $$(DD)cdj550.dev $$(DD)cdj850.dev \
$$(DD)cdj670.dev $$(DD)cdj890.dev $$(DD)cdj1600.dev $$(DD)cp50.dev \
$$(DD)declj250.dev $$(DD)djet500c.dev $$(DD)dnj650c.dev $$(DD)epson.dev \
$$(DD)eps9mid.dev $$(DD)eps9high.dev $$(DD)epsonc.dev $$(DD)hl7x0.dev \
$$(DD)ibmpro.dev $$(DD)imagen.dev $$(DD)iwhi.dev $$(DD)iwlo.dev \
$$(DD)iwlq.dev $$(DD)jetp3852.dev \
$$(DD)lbp8.dev $$(DD)lips3.dev \
$$(DD)lj250.dev $$(DD)lj4dith.dev $$(DD)lp8000.dev \
$$(DD)lq850.dev $$(DD)m8510.dev $$(DD)necp6.dev $$(DD)oki182.dev \
$$(DD)okiibm.dev $$(DD)paintjet.dev $$(DD)pj.dev $$(DD)pjetxl.dev \
$$(DD)pjxl.dev $$(DD)pjxl300.dev $$(DD)r4081.dev $$(DD)sj48.dev \
$$(DD)st800.dev $$(DD)stcolor.dev $$(DD)t4693d2.dev $$(DD)t4693d4.dev \
$$(DD)t4693d8.dev $$(DD)tek4696.dev $$(DD)uniprint.dev \
$$(DD)dfaxhigh.dev $$(DD)dfaxlow.dev $$(DD)cif.dev $$(DD)inferno.dev \
$$(DD)mgrmono.dev $$(DD)mgrgray2.dev $$(DD)mgrgray4.dev $$(DD)mgrgray8.dev \
$$(DD)mgr4.dev $$(DD)mgr8.dev $$(DD)sgirgb.dev'


# $$(DD)la50.dev $$(DD)la70.dev $$(DD)la75.dev $$(DD)la75plus.dev 
# $$(DD)ln03.dev $$(DD)xes.dev 
MAKE_FLAGS=	${BASE_FLAGS} prefix=${PREFIX}


MAKE_FILE=	src/unixansi.mak

GS_SOURCES=	ghostscript-6.01.tar.gz
#  Note: the following two are real files that have symlinks with
#  later version numbers pointing to them.  To avoid unnecessarily
#  downloading distfiles, do not change these when upgrading the port
#  unless the files really change.
GS_FONTS_STD=	ghostscript-fonts-std-6.0.tar.gz

# Additional driver HP 850, see http://www.erdw.ethz.ch/~bonk/hp850/hp850.html
HP850_DRV=	hp8xxs13.zip

# The pdf_sec.ps non-stub version has been moved to a separate package

FLAVORS=A4

FLAVOR?=
.if ${FLAVOR:U} == "A4"
CFLAGS+=	-DA4
.endif

FAKE_FLAGS=${BASE_FLAGS} prefix=${WRKINST}${PREFIX}

post-extract:
	ln -s `cd ${PORTSDIR} && cd ${JPEGDIR} && make show VARNAME=WRKDIST` ${WRKDIST}/jpeg
	ln -s `cd ${PORTSDIR} && cd ${PNGDIR} && make show VARNAME=WRKDIST` ${WRKDIST}/libpng
	cd ${WRKDIST} && unzip -Lao ${FULLDISTDIR}/${HP850_DRV} -x devs.mak

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
		${PREFIX}/share/ghostscript/6.01/doc
	${INSTALL_DATA} ${WRKSRC}/readme.hp8 \
		${PREFIX}/share/ghostscript/6.01/doc

.include <bsd.port.mk>
