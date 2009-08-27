# $OpenBSD: Makefile,v 1.58 2009/08/27 19:44:38 ajacoutot Exp $

COMMENT=		office suite for KDE

VERSION=		1.6.3
CATEGORIES=		x11 x11/kde productivity
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}

DISTNAME=	koffice-${VERSION}
PKGNAME=	${DISTNAME}p10

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

MODULES =	x11/kde devel/gettext

RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kspell,kabc,kjs,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell2,knewstuff,kmdi::x11/kde/libs3 \
		python2.5:python->=2.5,<2.6:lang/python/2.5 \
		art_lgpl_2.>=5::graphics/libart \
		wv2::converters/wv2 \
		MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \
		jbig::graphics/jbigkit \
		mysqlclient::databases/mysql \
		ruby::lang/ruby \
		exif.>=12::graphics/libexif \
		paper::print/libpaper \
		poppler-qt::print/poppler,-qt \
		GraphicsMagick.>=1::graphics/GraphicsMagick \
		wpd::textproc/libwpd


WANTLIB=	ICE SM X11 Xext Xrender artsflow artsflow_idl audiofile bz2 c \
		freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		gsf-1 gthread-2.0 jasper jpeg kmedia2_idl lcms \
		m mad mcop ogg pcre pcreposix png pthread qtmcop sndio \
		soundserver_idl stdc++ tiff util vorbis vorbisenc vorbisfile \
		xml2 xslt z Xt termcap Xi fontconfig crypto readline ssl \
		IlmImf Half Imath Iex idn GL GLU poppler pthread-stubs xcb \
		Xau Xdmcp expat fam rpcsvc IlmThread gio-2.0 wmflite


CONFIGURE_ARGS+= --with-pgsqlincdir=${LOCALBASE}/include/postgresql
LIB_DEPENDS+=	pqxx::databases/libpqxx \
		pq::databases/postgresql

.include <bsd.port.mk>
