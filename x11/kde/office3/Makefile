# $OpenBSD: Makefile,v 1.86 2013/10/05 07:34:40 espie Exp $

COMMENT=		office suite for KDE

VERSION=		1.6.3
REVISION =		32
CATEGORIES=		x11 x11/kde productivity
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}

DISTNAME=	koffice-${VERSION}

MASTER_SITES0=		ftp://ftp.kde.org/pub/kde/security_patches/
PATCHFILES=		koffice-xpdf-CVE-2007-3387.diff:0 \
			koffice-1.6.3-xpdf2-CVE-2007-4352-5392-5393.diff:0

SHARED_LIBS +=	kstore               3.0      # .3.0
SHARED_LIBS +=	kwmf                 3.0      # .3.0
SHARED_LIBS +=	kowmf                2.0      # .2.0
SHARED_LIBS +=	kofficecore          3.0      # .3.0
SHARED_LIBS +=	kofficeui            3.0      # .3.0
SHARED_LIBS +=	kotext               3.0      # .3.0
SHARED_LIBS +=	kopainter            2.0      # .2.0
SHARED_LIBS +=	kformulalib          4.0      # .4.0
SHARED_LIBS +=	koproperty           1.0      # .2.0
SHARED_LIBS +=	kopalette            1.0      # .1.0
SHARED_LIBS +=	krossapi             1.0      # .1.0
SHARED_LIBS +=	krossmain            1.0      # .1.0
SHARED_LIBS +=	kochart              2.0      # .1.0
SHARED_LIBS +=	karboncommon         1.0      # .0.0
SHARED_LIBS +=	kdchart              1.0      # .0.0
SHARED_LIBS +=	kchartcommon         3.0      # .2.0
SHARED_LIBS +=	kiviocommon          1.0      # .0.0
SHARED_LIBS +=	kpresenterprivate    4.0      # .4.0
SHARED_LIBS +=	kritacolor           1.0      # .1.0
SHARED_LIBS +=	kritaimage           1.0      # .1.0
SHARED_LIBS +=	kritaui              1.0      # .1.0
SHARED_LIBS +=	kritacommon          2.0      # .1.0
SHARED_LIBS +=	kritargb             0.0      # .0.0
SHARED_LIBS +=	krita_rgb_u16        0.0      # .0.0
SHARED_LIBS +=	krita_rgb_f32        0.0      # .0.0
SHARED_LIBS +=	kritagrayscale       0.0      # .0.0
SHARED_LIBS +=	krita_gray_u16       0.0      # .0.0
SHARED_LIBS +=	krita_cmyk_u16       0.0      # .0.0
SHARED_LIBS +=	krita_lms_f32        0.0      # .0.0
SHARED_LIBS +=	krita_ycbcr_u8       0.0      # .0.0
SHARED_LIBS +=	krita_ycbcr_u16      0.0      # .0.0
SHARED_LIBS +=	krita_rgb_f16half    0.0      # .0.0
SHARED_LIBS +=	kritascripting       0.0      # .0.0
SHARED_LIBS +=	kspreadcommon        1.0      # .0.0
SHARED_LIBS +=	kugarlib             2.0      # .1.2
SHARED_LIBS +=	kwmailmerge_interface 5.0      # .4.0
SHARED_LIBS +=	kwordprivate         4.0      # .4.0
SHARED_LIBS +=	kexisql3             4.1      # .3.2
SHARED_LIBS +=	kexisql2             3.0      # .2.8
SHARED_LIBS +=	kexiutils            2.0      # .2.0
SHARED_LIBS +=	kexidb               2.0      # .2.0
SHARED_LIBS +=	kexidbparser         2.0      # .2.0
SHARED_LIBS +=	kexicore             2.0      # .2.0
SHARED_LIBS +=	kexiguiutils         2.0      # .2.0
SHARED_LIBS +=	kexidatatable        2.0      # .2.0
SHARED_LIBS +=	kexiextendedwidgets  2.0      # .2.0
SHARED_LIBS +=	kexirelationsview    2.0      # .2.0
SHARED_LIBS +=	kformdesigner        2.0      # .2.0
SHARED_LIBS +=	keximain             2.0      # .2.0
SHARED_LIBS +=	keximigrate          2.0      # .2.0
SHARED_LIBS +=	kexiformutils        2.0      # .2.0
SHARED_LIBS +=	kchartimageexport    4.0      # .4.0
SHARED_LIBS +=	kwordexportfilters   2.0      # .1.1
SHARED_LIBS +=	kpresenterimageexport 4.0      # .4.0

FAKE_FLAGS=	TAR=tar

SEPARATE_BUILD=	flavored

MODKDE_VERSION=	3.5.7
AUTOCONF_VERSION=2.61

MODULES =	x11/kde devel/gettext lang/python lang/ruby
MODRUBY_REV=	1.8

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS=	x11/kde/libs3 \
		graphics/libart \
		converters/wv2>=0.4.2 \
		graphics/ImageMagick \
		graphics/jbigkit \
		databases/mysql \
		graphics/libexif \
		print/poppler,,-qt \
		graphics/GraphicsMagick \
		textproc/libwpd \
		databases/libpqxx \
		databases/postgresql \
		${MODPY_LIB_DEPENDS} \
		${MODRUBY_LIB_DEPENDS}

WANTLIB= GL GLU GraphicsMagick>=1 Half ICE Iex IlmImf IlmThread Imath \
	MagickCore>=1 SM X11 Xcursor Xdamage Xext FLAC fam pthread-stubs \
	Xfixes Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2>=5 \
	artsflow artsflow_idl audiofile bz2 c crypto drm exif>=12 expat \
	fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsf-1 \
	gthread-2.0 idn jasper jbig jpeg kmedia2_idl lcms ltdl lib/kde3/DCOP \
	lib/kde3/artskde lib/kde3/kabc lib/kde3/kdecore>=4 lib/kde3/kdefx \
	lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui lib/kde3/khtml \
	lib/kde3/kio lib/kde3/kjs lib/kde3/kmdi lib/kde3/knewstuff \
	lib/kde3/kparts lib/kde3/kresources lib/kde3/kspell lib/kde3/kspell2 \
	lib/kde3/ktexteditor lib/kde3/kutils lib/kde3/kwalletclient \
	lib/kde3/vcard m mad mcop mng mysqlclient ogg openjpeg pcre \
	pcreposix png poppler poppler-qt pq pqxx pthread \
	qtmcop readline sndio soundserver_idl ssl stdc++ \
	termcap tiff util vorbis vorbisenc vorbisfile wpd-0.8 \
	wv2 xcb xml2 xslt z djvulibre ffi fftw3 lcms2 lzma wmf-0.2 wmflite-0.2 \
	${MODPY_WANTLIB} ${MODRUBY_WANTLIB}

CONFIGURE_ARGS+= --with-pgsqlincdir=${LOCALBASE}/include/postgresql

# no need to depend on libpaper
CONFIGURE_ENV +=	ac_cv_header_paper_h=no \
			ac_cv_lib_paper_paperinit=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
