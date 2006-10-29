# $OpenBSD: Makefile,v 1.40 2006/10/29 22:55:57 espie Exp $

COMMENT=		"office suite for KDE"

VERSION=		1.6.0
CATEGORIES=		x11 x11/kde productivity
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}

DISTNAME=	koffice-${VERSION}

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

FLAVORS=debug
FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored
BUILD_DEPENDS+=	::devel/pkgconfig

MODKDE_VERSION=	3.5.3
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
AUTOCONF_VERSION=2.59

LIB_DEPENDS=	kdecore.>=4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kspell,kabc,kjs,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell2,knewstuff,kmdi::x11/kde/libs3 \
		python2.4:python-2.4.*:lang/python/2.4 \
		art_lgpl_2.>=5::graphics/libart \
		wv2::converters/wv2 \
		Magick::graphics/ImageMagick \
		jbig::graphics/jbigkit \
		mysqlclient::databases/mysql \
		ruby::lang/ruby \
		exif.>=12::graphics/libexif \
		poppler-qt::print/poppler,-qt \
		GraphicsMagick::graphics/GraphicsMagick


WANTLIB=	ICE SM X11 Xext Xrender artsflow artsflow_idl audiofile bz2 c \
		esd freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		gsf-1 gthread-2.0 iconv intl jasper jpeg kmedia2_idl lcms \
		m mad mcop ogg ossaudio pcre pcreposix png pthread qtmcop \
		soundserver_idl stdc++ tiff util vorbis vorbisenc vorbisfile \
		xml2 xslt z Xt termcap Xi fontconfig crypto readline ssl \
		IlmImf Half Imath Iex idn GL GLU poppler


CONFIGURE_ARGS+= --with-pgsqlincdir=${LOCALBASE}/include/postgresql
LIB_DEPENDS+=	pqxx::databases/libpqxx \
		pq::databases/postgresql


USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static
.include <bsd.port.mk>
