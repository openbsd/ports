# $OpenBSD: Makefile,v 1.30 2002/12/03 13:30:39 espie Exp $

COMMENT="GNU PostScript interpreter"

VERSION=	7.05
DISTNAME=	ghostscript-${VERSION}
CATEGORIES=	print lang

DIR=		gnu/gs${VERSION:S/.//}
MASTER_SITES=	${GS_SITES} ${MASTER_SITE_GNU:=ghostscript/}
MASTER_SITES1= 	${MASTER_SITE_GNU:=ghostscript/}
MASTER_SITES2=	${PDF_SITES}

HOMEPAGE=	http://www.cs.wisc.edu/~ghost/

DISTFILES=	${GS_SOURCES} ${GS_FONTS_STD}:1 pdf_sec.ps:2

SUBST_VARS=		OSREV	VERSION
DIST_SUBDIR=	gs

# GPL 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes


JPEGDIR=graphics/jpeg
PNGDIR=graphics/png

BUILD_DEPENDS=	::${JPEGDIR}:patch ::${PNGDIR}:patch

LIB_DEPENDS=	png.2::${PNGDIR}

EXTRACT_ONLY=	${GS_SOURCES}

#WRKDIST=	${WRKDIR}/gs${VERSION}
WRKSRC=		${WRKDIST}/src
WRKBUILD=	${WRKDIST}
BASE_FLAGS=	INSTALL_PROGRAM='${INSTALL_SCRIPT}' \
		INSTALL_DATA='${INSTALL_DATA}' \
		SHARE_LIBPNG=1 \
		SHARE_ZLIB=1 \
		CFLAGS_STANDARD='${CFLAGS}' \
		XLDFLAGS=-L${LOCALBASE}/lib \
		XINCLUDE=-I${X11BASE}/include \
		XLIBS='Xt SM ICE Xext X11' \
		XLIBDIRS=-L${X11BASE}/lib \
		GLOBJDIR=./objects \
		GLGENDIR=./objects \
		PSOBJDIR=./objects \
		PSGENDIR=./objects \
		STDLIBS='-pthread -lm' 

PDFDIR=share/ghostscript/${VERSION}/lib

BASE_FLAGS+=	DEVICE_DEVS1='\
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
$$(DD)cdjmono.dev $$(DD)cdj500.dev $$(DD)cdj550.dev \
$$(DD)cp50.dev \
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


#MAKE_FILE=	src/unix-gcc.mak

GS_SOURCES=	ghostscript-${VERSION}.tar.gz
#  Note: the following two are real files that have symlinks with
#  later version numbers pointing to them.  To avoid unnecessarily
#  downloading distfiles, do not change these when upgrading the port
#  unless the files really change.
GS_FONTS_STD=	ghostscript-fonts-std-6.0.tar.gz

ALL_TARGET=	all
INSTALL_TARGET=	install
# The pdf_sec.ps non-stub version has been moved to a separate package

FLAVORS=A4 gtk

FLAVOR?=
.if ${FLAVOR:U:MA4}
CFLAGS+=	-DA4
.endif

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=	gtk.1::x11/gtk+
ALL_TARGET+=so
INSTALL_TARGET+=soinstall
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}
MAKE_FLAGS += EXTRALIBS="-L${X11BASE}/lib -lXt -lSM -lICE -lXext -lX11 -L${LOCALBASE}/lib -lpng"
.else
end_install=
.endif

NO_REGRESS=	Yes

FAKE_FLAGS=${BASE_FLAGS} prefix=${WRKINST}${PREFIX}

post-extract:
	ln -s ${WRKDIR}/${JPEGDIR}/jpeg* ${WRKDIST}/jpeg
	ln -s ${WRKDIR}/${PNGDIR}/libpng* ${WRKDIST}/libpng

do-configure:
	cd ${WRKBUILD} && ln -s ${WRKSRC}/unix-gcc.mak Makefile

pre-build:
	mkdir -p ${WRKDIST}/objects
	mkdir -p ${WRKDIST}/bin
	mkdir -p ${WRKDIST}/soobj
	mkdir -p ${WRKDIST}/sobin

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/ghostscript 
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/bin 
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	cd ${PREFIX}/share/ghostscript  && \
			tar xzf ${FULLDISTDIR}/${GS_FONTS_STD}

post-install:
	strip ${PREFIX}/bin/gs
	cd ${PREFIX}/man/man1 && \
		ln -sf ps2ps.1 eps2eps.1 && \
		ln -sf gslp.1 gsbj.1 && \
		ln -sf gslp.1 gsdj.1 && \
		ln -sf gslp.1 gsdj500.1 && \
		ln -sf gslp.1 gslj.1 && \
		ln -sf ps2pdf.1 ps2pdf12.1 && \
		ln -sf ps2pdf.1 ps2pdf13.1
	cd ${PREFIX}/man/de/man1 && \
		ln -sf ps2pdf.1 ps2pdf12.1 && \
		ln -sf ps2pdf.1 ps2pdf13.1 && \
		ln -sf ps2ps.1 eps2eps.1
	${INSTALL_DATA} ${FULLDISTDIR}/pdf_sec.ps ${PREFIX}/${PDFDIR}

.include <bsd.port.mk>
