# $OpenBSD: Makefile,v 1.46 2006/10/19 13:12:37 kili Exp $

COMMENT=	"GNU PostScript interpreter"

VERSION=	8.54
DISTNAME=	ghostscript-${VERSION}-gpl
PKGNAME=	${DISTNAME:S,-gpl,,}
CATEGORIES=	print lang
SHARED_LIBS=	gs	9.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ghostscript/}
MASTER_SITES1=	${PDF_SITES}

HOMEPAGE=	http://www.cs.wisc.edu/~ghost/

GS_SOURCES=	${DISTNAME}${EXTRACT_SUFX}
DISTFILES=	${GS_SOURCES} pdf_sec.ps:1
EXTRACT_ONLY=	${GS_SOURCES}

SUBST_VARS=	VERSION
DIST_SUBDIR=	gs

# GPL 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		m c z jasper jpeg png


RUN_DEPENDS=	:ghostscript-fonts-*:print/ghostscript/gnu-fonts

LIB_DEPENDS=	::graphics/png ::graphics/jpeg ::graphics/jasper

BASE_FLAGS=	INSTALL_PROGRAM='${INSTALL_SCRIPT}' \
		INSTALL_DATA='${INSTALL_DATA}' \
		SHARE_LIBPNG=1 \
		SHARE_ZLIB=1 \
		CFLAGS_STANDARD='${CFLAGS}' \
		XLDFLAGS=-L${LOCALBASE}/lib \
		BINDIR=./obj \
		GLSRCDIR=./src \
		GLGENDIR=./obj \
		GLOBJDIR=./obj \
		PSSRCDIR=./src \
		PSLIBDIR=./lib \
		PSGENDIR=./obj \
		PSOBJDIR=./obj \
		JBIG2SRCDIR=./jbig2dec \
		ICCSRCDIR=./icclib \
		IJSSRCDIR=./ijs \
		SOOBJRELDIR=../obj \
		SOBINRELDIR=../obj \
		STDLIBS='-lm' \
		LIBgs_VERSION=${LIBgs_VERSION}

PDFDIR=share/ghostscript/${VERSION}/lib

X11_DEVICE_DEVS1= $$(DD)x11.dev $$(DD)x11alpha.dev $$(DD)x11cmyk.dev \
$$(DD)x11cmyk2.dev $$(DD)x11cmyk4.dev $$(DD)x11cmyk8.dev \
$$(DD)x11gray2.dev $$(DD)x11gray4.dev $$(DD)x11mono.dev

BASE_DEVICE_DEVS1= $$(DD)ap3250.dev $$(DD)appledmp.dev $$(DD)bbox.dev \
$$(DD)bit.dev $$(DD)bitcmyk.dev $$(DD)bitrgb.dev $$(DD)bj10e.dev \
$$(DD)bj200.dev $$(DD)bjc600.dev $$(DD)bjc800.dev $$(DD)bmp16.dev \
$$(DD)bmp16m.dev $$(DD)bmp256.dev $$(DD)bmp32b.dev $$(DD)bmpgray.dev \
$$(DD)bmpmono.dev $$(DD)bmpsep1.dev $$(DD)bmpsep8.dev $$(DD)ccr.dev \
$$(DD)cdeskjet.dev $$(DD)cdj500.dev $$(DD)cdj550.dev $$(DD)cdjcolor.dev \
$$(DD)cdjmono.dev $$(DD)cgm24.dev $$(DD)cgm8.dev $$(DD)cgmmono.dev \
$$(DD)cif.dev $$(DD)cljet5.dev $$(DD)cljet5c.dev $$(DD)cp50.dev \
$$(DD)declj250.dev $$(DD)deskjet.dev $$(DD)devicen.dev $$(DD)dfaxhigh.dev \
$$(DD)dfaxlow.dev $$(DD)djet500.dev $$(DD)djet500c.dev $$(DD)dnj650c.dev \
$$(DD)eps9high.dev $$(DD)eps9mid.dev $$(DD)epson.dev $$(DD)epsonc.dev \
$$(DD)epswrite.dev $$(DD)faxg3.dev $$(DD)faxg32d.dev $$(DD)faxg4.dev \
$$(DD)hl7x0.dev $$(DD)ibmpro.dev $$(DD)ijs.dev $$(DD)imagen.dev \
$$(DD)inferno.dev $$(DD)iwhi.dev $$(DD)iwlo.dev $$(DD)iwlq.dev \
$$(DD)jetp3852.dev $$(DD)jpeg.dev $$(DD)jpeggray.dev $$(DD)laserjet.dev \
$$(DD)lbp8.dev $$(DD)lips3.dev $$(DD)lj250.dev $$(DD)lj4dith.dev \
$$(DD)lj5gray.dev $$(DD)lj5mono.dev $$(DD)ljet2p.dev $$(DD)ljet3.dev \
$$(DD)ljet3d.dev $$(DD)ljet4.dev $$(DD)ljet4d.dev $$(DD)ljetplus.dev \
$$(DD)lp2563.dev $$(DD)lp8000.dev $$(DD)lq850.dev $$(DD)m8510.dev \
$$(DD)mgr4.dev $$(DD)mgr8.dev $$(DD)mgrgray2.dev $$(DD)mgrgray4.dev \
$$(DD)mgrgray8.dev $$(DD)mgrmono.dev $$(DD)miff24.dev $$(DD)necp6.dev \
$$(DD)oce9050.dev $$(DD)oki182.dev $$(DD)okiibm.dev $$(DD)paintjet.dev \
$$(DD)pbm.dev $$(DD)pbmraw.dev $$(DD)pcx16.dev $$(DD)pcx24b.dev \
$$(DD)pcx256.dev $$(DD)pcxcmyk.dev $$(DD)pcxgray.dev $$(DD)pcxmono.dev \
$$(DD)pdfwrite.dev $$(DD)pgm.dev $$(DD)pgmraw.dev $$(DD)pgnm.dev \
$$(DD)pgnmraw.dev $$(DD)pj.dev $$(DD)pjetxl.dev $$(DD)pjxl.dev \
$$(DD)pjxl300.dev $$(DD)pkm.dev $$(DD)pkmraw.dev $$(DD)pksm.dev \
$$(DD)pksmraw.dev $$(DD)plan9bm.dev $$(DD)png16.dev $$(DD)png16m.dev \
$$(DD)png256.dev $$(DD)png48.dev $$(DD)pngalpha.dev $$(DD)pnggray.dev \
$$(DD)pngmono.dev $$(DD)pnm.dev $$(DD)pnmraw.dev $$(DD)ppm.dev \
$$(DD)ppmraw.dev $$(DD)ps2write.dev $$(DD)psdcmyk.dev $$(DD)psdrgb.dev \
$$(DD)psgray.dev $$(DD)psmono.dev $$(DD)psrgb.dev $$(DD)pswrite.dev \
$$(DD)pxlcolor.dev $$(DD)pxlmono.dev $$(DD)r4081.dev $$(DD)sgirgb.dev \
$$(DD)sj48.dev $$(DD)spotcmyk.dev $$(DD)st800.dev $$(DD)stcolor.dev \
$$(DD)t4693d2.dev $$(DD)t4693d4.dev $$(DD)t4693d8.dev $$(DD)tek4696.dev \
$$(DD)tiff12nc.dev $$(DD)tiff24nc.dev $$(DD)tiff32nc.dev \
$$(DD)tiffcrle.dev $$(DD)tiffg3.dev $$(DD)tiffg32d.dev $$(DD)tiffg4.dev \
$$(DD)tiffgray.dev $$(DD)tifflzw.dev $$(DD)tiffpack.dev $$(DD)tiffsep.dev \
$$(DD)uniprint.dev $$(DD)xcf.dev

MAKE_FLAGS=	${BASE_FLAGS}
CFLAGS+=	-DSYS_TYPES_HAS_STDINT_TYPES

INCPATHS=	-I${LOCALBASE}/include				\
		-I${LOCALBASE}/include/libpng			\
		-I${LOCALBASE}/include/jasper

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} ${INCPATHS}"			\
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"		\
		LIBS=-ljpeg


# The pdf_sec.ps non-stub version has been moved to a separate package

FLAVORS=	a4 gtk no_x11
FLAVOR?=

.if ${FLAVOR:L:Ma4}
CFLAGS+=	-DA4
.endif

.if ${FLAVOR:L:Mgtk} && ${FLAVOR:L:Mno_x11}
ERRORS+= "Fatal: Conflicting flavors: ${FLAVOR}"
.elif ${FLAVOR:L:Mgtk}
MODULES=	devel/gettext
LIB_DEPENDS+=	gtk.>=1,gdk::x11/gtk+
WANTLIB+=	Xi glib gmodule
ALL_TARGET=	so
INSTALL_TARGET=	soinstall
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}
X11_DEVICE_DEVS1+=	$$(DD)display.dev
.else
ALL_TARGET=	all
INSTALL_TARGET=	install
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--without-x
BASE_FLAGS+=	DEVICE_DEVS1='${BASE_DEVICE_DEVS1}'
.else
USE_X11=	Yes
CONFIGURE_ARGS+=--with-x
WANTLIB+=	X11 Xt SM Xext ICE
BASE_FLAGS+=	DEVICE_DEVS1='${X11_DEVICE_DEVS1} ${BASE_DEVICE_DEVS1}'
.endif

NO_REGRESS=	Yes

FAKE_FLAGS=${BASE_FLAGS} prefix=${WRKINST}${PREFIX} \
		mandir=${WRKINST}${PREFIX}/man


# Avoid surprises in update-patches.
post-extract:
	find ${WRKDIST} -name '*.orig' -type f | xargs rm

pre-configure:
	rm -rf ${WRKDIST}/{jasper,jpeg,libpng,zlib}

pre-build:
	mkdir -p ${WRKDIST}/obj

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/ghostscript 
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/bin 
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1

post-install:
.if ${FLAVOR:L:Mgtk}
	strip ${PREFIX}/bin/gsc
	strip ${PREFIX}/bin/gsx
	ln -s gsc ${PREFIX}/bin/gs
.else
	strip ${PREFIX}/bin/gs
.endif
	cd ${PREFIX}/man/man1 && \
		ln -sf ps2ps.1 eps2eps.1 && \
		ln -sf gslp.1 gsbj.1 && \
		ln -sf gslp.1 gsdj.1 && \
		ln -sf gslp.1 gsdj500.1 && \
		ln -sf gslp.1 gslj.1 && \
		ln -sf ps2pdf.1 ps2pdf12.1 && \
		ln -sf ps2pdf.1 ps2pdf13.1 && \
		ln -sf ps2pdf.1 ps2pdf14.1
	cd ${PREFIX}/man/de/man1 && \
		ln -sf ps2pdf.1 ps2pdf12.1 && \
		ln -sf ps2pdf.1 ps2pdf13.1 && \
		ln -sf ps2pdf.1 ps2pdf14.1 && \
		ln -sf ps2ps.1 eps2eps.1
	${INSTALL_DATA} ${FULLDISTDIR}/pdf_sec.ps ${PREFIX}/${PDFDIR}

.include <bsd.port.mk>
