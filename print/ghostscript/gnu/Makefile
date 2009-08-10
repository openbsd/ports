# $OpenBSD: Makefile,v 1.68 2009/08/10 06:34:08 kili Exp $

COMMENT=	GNU PostScript interpreter

VERSION=	8.63
DISTNAME=	ghostscript-${VERSION}
PKGNAME=	${DISTNAME}p8
CATEGORIES=	print lang
SHARED_LIBS=	gs	11.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ghostscript/}

HOMEPAGE=	http://www.cs.wisc.edu/~ghost/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

FLAVORS=	a4 gtk no_x11
FLAVOR?=

FLAVOR_STRING=	${FLAVOR_EXT:S/-/,/g}

SUBST_VARS=	VERSION FLAVOR_STRING

# GPLv2, except for the included CMap files from Adobe, which may
# only be redistributed without modifications.
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	m c pthread z

MODULES=	converters/libiconv

RUN_DEPENDS=	:ghostscript-fonts-*:print/ghostscript/gnu-fonts
BUILD_DEPENDS=	::print/cups
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg	\
		png.>=6::graphics/png		\
		ijs::print/ijs

CFLAGS+=	-DSYS_TYPES_HAS_STDINT_TYPES	\
		-I${LOCALBASE}/include		\
		-I${LOCALBASE}/include/ijs	\
		-I${LOCALBASE}/include/libpng

# Note: all the device definitions are at the very end of this makefile.

MAKE_FLAGS=	BINDIR=./obj				\
		CFLAGS_STANDARD='${CFLAGS} -fPIC'	\
		CUPSCFLAGS="$$(cups-config --cflags)"	\
		CUPSSERVERBIN="$$(cups-config --serverbin)" \
		CUPSSERVERROOT="$$(cups-config --serverroot)" \
		CUPSDATA="$$(cups-config --datadir)"	\
		DEVICE_DEVS='${DEVICES:=$(DD)%.dev}'	\
		EXTRALIBS="${EXTRALIBS}"		\
		GLGENDIR=./obj				\
		GLOBJDIR=./obj				\
		GLSRCDIR=./src				\
		ICCSRCDIR=./icclib			\
		INSTALL='${INSTALL}'			\
		INSTALL_DATA='${INSTALL_DATA}'		\
		INSTALL_PROGRAM='${INSTALL_PROGRAM}'	\
		JBIG2SRCDIR=./jbig2dec			\
		JPX_LIB=jasper				\
		LIBgs_VERSION=${LIBgs_VERSION}		\
		PSGENDIR=./obj				\
		PSLIBDIR=./lib				\
		PSOBJDIR=./obj				\
		PSSRCDIR=./src				\
		SHARE_IJS=1				\
		SHARE_JPEG=1				\
		SHARE_LIBPNG=1				\
		SHARE_ZLIB=1				\
		SOBINRELDIR=../obj			\
		SOOBJRELDIR=../obj			\
		SOC_CFLAGS="${SOC_CFLAGS}"		\
		SOC_LIBS="${SOC_LIBS}"			\
		STDLIBS='-pthread -lm -liconv'		\
		SYNC=posync				\
		TRUE_PREFIX='${LOCALBASE}'		\
		USE_GTK=${USE_GTK}			\
		XLDFLAGS=-L${LOCALBASE}/lib		\
		prefix='${PREFIX}'

USE_GMAKE=	Yes

# Jasper needs this. Everything else seems to work better without auto*.
WRKCONF=		${WRKSRC}/jasper
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		AWK=/usr/bin/awk			\
			CFLAGS='${CFLAGS}'			\
			GREP=/usr/bin/grep			\
			LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib'	\
			LIBS=-ljpeg

# Hack to let ALL_TARGET etc. depend on the value of NO_SHARED_LIBS,
# which is available only after the inclusion of bsd.port.mk.
ALL_TARGET_NON_SHARED-No = 	so
ALL_TARGET_NON_SHARED-Yes = 	all
INSTALL_TARGET_NON_SHARED-No =	install install-so
INSTALL_TARGET_NON_SHARED-Yes =	install

SOC_LIBS =			-L${LOCALBASE}/lib -ljpeg -pthread

.if ${FLAVOR:L:Ma4}
CFLAGS+=	-DA4
.endif

.if ${FLAVOR:L:Mgtk} && ${FLAVOR:L:Mno_x11}
ERRORS+= "Fatal: Conflicting flavors: ${FLAVOR}"
.elif ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
MODULES+=	devel/gettext
WANTLIB+=	Xcomposite Xcursor Xdamage Xau Xdmcp Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 cairo expat fontconfig freetype \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
DEVICES+=	${GTK_DEVICES}
SOC_CFLAGS=	$$(pkg-config gtk+-2.0 --cflags)
SOC_LIBS+=	$$(pkg-config gtk+-2.0 --libs)
USE_GTK=	Yes
.else
USE_GTK=	No
.endif

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
WANTLIB+=	X11 Xt Xext pthread-stubs xcb
DEVICES+=	${X11_DEVICES}
SOC_LIBS+=	-L${X11BASE}/lib -lXt -lXt -lXext
.endif

NO_REGRESS=	Yes

# Avoid surprises in update-patches.
# Use the old-style (non-autoconf) build.
post-extract:
	find ${WRKDIST} -name '*.orig' -type f | xargs -r rm
	ln -s src/unix-gcc.mak ${WRKDIST}/Makefile
	cd ${WRKSRC} && rm -rf zlib ijs jpeg libpng

pre-build:
	mkdir -p ${WRKDIST}/obj

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/ghostscript 
	@${INSTALL_PROGRAM_DIR} ${PREFIX}/bin 
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1

.ifdef(DEBUG)
STRIP=		:
.endif

post-install:
	if [ -x ${PREFIX}/bin/gsc ]; then \
		mv ${PREFIX}/bin/gsc ${PREFIX}/bin/gs; \
	fi
	if [ -x ${PREFIX}/bin/gsx ]; then \
		mv ${PREFIX}/bin/gsx ${PREFIX}/bin/gs; \
	fi
	${STRIP} ${PREFIX}/bin/gs
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
	mv ${DESTDIR}/${SYSCONFDIR}/cups/* ${PREFIX}/share/ghostscript/${VERSION}/examples
	rm -rf ${DESTDIR}/${SYSCONFDIR}/cups

# Device list based on configure.ac:
# X_DEVS (skipping x11_ and x11alt_, since those are dependencies of
# other devices).
X11_DEVICES=	x11 x11alpha x11cmyk x11cmyk2 x11cmyk4 x11cmyk8 \
		x11gray2 x11gray4 x11mono x11rg16x x11rg32x

# HP_DEVS
DEVICES+=	cdeskjet cdj1600 cdj500 cdj550 cdj670 cdj850 cdj880 \
		cdj890 cdj970 cdjcolor cdjmono chp2200 cljet5 cljet5c \
		cljet5pr deskjet djet500 djet500c dnj650c hpdj1120c \
		hpdj310 hpdj320 hpdj340 hpdj400 hpdj500 hpdj500c \
		hpdj510 hpdj520 hpdj540 hpdj550c hpdj560c hpdj600 \
		hpdj660c hpdj670c hpdj680c hpdj690c hpdj850c hpdj855c \
		hpdj870c hpdj890c hpdjplus hpdjportable laserjet \
		lj3100sw lj4dith lj5gray lj5mono ljet2p ljet3 ljet3d \
		ljet4 ljet4d ljetplus lp2563 paintjet pcl3 pj pjetxl \
		pjxl pjxl300 pxlcolor pxlmono

# PCLXL_DEVS
DEVICES+=	pxlmono pxlcolor

# EPSON_DEVS
DEVICES+=	alc1900 alc2000 alc4000 alc4100 alc8500 alc8600 \
		alc9100 epl2050 epl2050p epl2120 epl2500 epl2750 \
		epl5800 epl5900 epl6100 epl6200 eps9high eps9mid \
		epson epsonc escp lp1800 lp1900 lp2200 lp2400 lp2500 \
		lp3000c lp7500 lp7700 lp7900 lp8000 lp8000c lp8100 \
		lp8200c lp8300c lp8300f lp8400f lp8500c lp8600 \
		lp8600f lp8700 lp8800c lp8900 lp9000b lp9000c lp9100 \
		lp9200b lp9200c lp9300 lp9400 lp9500c lp9600 lp9600s \
		lp9800c lps4500 lps6500 lq850 photoex st800 stcolor

# CANON_DEVS
DEVICES+=	bj10e bj200 bjc600 bjc800 bjccmyk bjccolor bjcgray \
		bjcmono lbp8 lips3
 
# LEXMARK_DEVS
DEVICES+=	lex2050 lex3200 lex5700 lex7000 lx5000 lxm3200 lxm5700m

# BROTHER_DEVS
DEVICES+=	hl1240 hl1250 hl7x0

# APPLE_DEVS
DEVICES+=	appledmp iwhi iwlo iwlq
 
# IBM_DEVS
DEVICES+=	ibmpro jetp3852

# OKI_DEVS
DEVICES+=	oki182 oki4w okiibm

# JAPAN_DEVS
DEVICES+=	bj10v bj10vh bjc880j dj505j escpage fmlbp fmpr jj100 \
		lbp310 lbp320 lips2p lips4 lips4v lj4dithp ljet4pjl \
		lp2000 md1xMono md50Eco md50Mono mj500c mj6000c \
		mj700v2c mj8000c ml600 npdl picty180 pr1000 pr1000_4 \
		pr150 pr201 rpdl

# MISC_PDEVS
DEVICES+=	ap3250 atx23 atx24 atx38 coslw2p coslwxl cp50 \
		declj250 dl2100 fs600 gdi imagen la50 la70 la75 \
		la75plus lj250 ln03 m8510 md2k md5k necp6 oce9050 \
		r4081 samsunggdi sj48 t4693d2 t4693d4 t4693d8 tek4696 \
		uniprint xes

# OPVP_DEVS
DEVICES+=	oprp opvp

# BMP_DEVS
DEVICES+=	bmp16 bmp16m bmp256 bmp32b bmpgray bmpmono bmpsep1 \
		bmpsep8
 
# FAX_DEVS
DEVICES+=	cfax dfaxhigh dfaxlow fax faxg3 faxg32d faxg4 tfax \
		tiffg3 tiffg32d tiffg4
 
# JPEG_DEVS
DEVICES+=	jpeg jpegcmyk jpeggray jpx

# PNG_DEVS (note: png48 not mentioned in configure.ac)
DEVICES+=	png16 png16m png256 png48 pngalpha pnggray pngmono

# TIFF_DEVS
DEVICES+=	tiff12nc tiff24nc tiff32nc tiffcrle tiffgray tifflzw \
		tiffpack tiffs tiffsep

# PCX_DEVS
DEVICES+=	pcx16 pcx24b pcx256 pcx2up pcxcmyk pcxgray pcxmono

# PBM_DEVS
DEVICES+=	pam pamcmyk32 pbm pbmraw pgm pgmraw pgnm pgnmraw pkm pkmraw \
		pksm pksmraw pnm pnmraw ppm ppmraw

# PS_DEVS
DEVICES+=	bbox epswrite pdfwrite ps2write psdcmyk psdf psdrgb \
		psgray psmono psrgb pswrite

# WTS_HALFTONING_DEVS
DEVICES+=	imdi simdi wtscmyk wtsimdi

# MISC_FDEVS
DEVICES+=	bit bitcmyk bitrgb bitrgbtags ccr cgm24 cgm8 cgmmono \
		cif devicen inferno mag16 mag256 mgr4 mgr8 mgrgray2 \
		mgrgray4 mgrgray8 mgrmono miff24 plan9bm sgirgb \
		spotcmyk sunhmono xcf

# Aditional devices not mentioned in configure.ac:
DEVICES+=	ijs

# Cups
DEVICES+=	cups

# gtk (display driver)
GTK_DEVICES=	display

.include <bsd.port.mk>

ALL_TARGET =		${ALL_TARGET_NON_SHARED-${NO_SHARED_LIBS}}
INSTALL_TARGET =	${INSTALL_TARGET_NON_SHARED-${NO_SHARED_LIBS}}
