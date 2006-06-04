# $OpenBSD: Makefile,v 1.33 2006/06/04 23:10:21 brad Exp $

COMMENT=		"office suite for KDE"

CATEGORIES=		x11 x11/kde productivity
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/koffice-1.5.1/src/@}

DISTNAME=	koffice-1.5.1
PATCHFILES=	koffice-1.5.1-kexi-checkbox-data-saving.patch \
		koffice-1.5.1-kexi-form-plugins.patch

do-distpatch:
	cd ${WRKDIST} && ${PATCH} ${PATCH_DIST_ARGS} <${FULLDISTDIR}/koffice-1.5.1-kexi-checkbox-data-saving.patch
	cd ${WRKDIST}/kexi && ${PATCH} -z .bak.orig --forward --quiet -E -p0 <${FULLDISTDIR}/koffice-1.5.1-kexi-form-plugins.patch

PKGNAME=	koffice-1.5.1p1
#SHARED_LIBS=	karbonbase		3.0 \
#		kexipropertyeditor	1.0 \
#		koscript		3.0 \

SHARED_LIBS=	kchartimageexport	4.0 \
		kexiutils		1.0 \
		kopalette		1.0 \
		koproperty		0.0 \
		kpresenterimageexport	4.0 \
		kpresenterprivate	4.0 \
		krita_cmyk_u16		0.0 \
		krita_gray_u16		0.0 \
		krita_lms_f32		0.0 \
		krita_rgb_f16half	0.0 \
		krita_rgb_f32		0.0 \
		krita_rgb_u16		0.0 \
		kritacolor		1.0 \
		kritagrayscale		0.0 \
		kritaimage		1.0 \
		kritargb		0.0 \
		kritascripting		0.0 \
		kritaui			1.0 \
		krossapi		1.0 \
		krossmain		1.0 \
		kwordprivate		4.0

# need to check version of these
SHARED_LIBS+=				    \
		karboncommon		1.0 \
		kchartcommon		3.0 \
		kdchart			1.0 \
		kexicore		1.0 \
		kexidatatable		1.0 \
		kexidb			1.0 \
		kexidbparser		1.0 \
		kexiextendedwidgets	1.0 \
		kexiformutils		1.0 \
		kexiguiutils		1.0 \
		keximain		1.0 \
		keximigrate		1.0 \
		kexirelationsview	1.0 \
		kexisql2		3.0 \
		kexisql3		4.0 \
		kformdesigner		1.0 \
		kformulalib		4.0 \
		kiviocommon		1.0 \
		kochart			2.0 \
		kofficecore		3.0 \
		kofficeui		3.0 \
		kopainter		2.0 \
		kotext			3.0 \
		kowmf			2.0 \
		kritacommon		2.0 \
		kspreadcommon		1.0 \
		kstore			3.0 \
		kugarlib		2.0 \
		kwmailmerge_interface	5.0 \
		kwmf			3.0 \
		kwordexportfilters	2.0

FLAVORS=debug
FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored
BUILD_DEPENDS+=	::devel/pkgconfig

MODKDE_VERSION=	3.5.3
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
AUTOCONF_VERSION=2.59

LIB_DEPENDS=	kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kspell,kabc,kjs,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell2,knewstuff,kmdi::x11/kde/libs3 \
		python2.4.0.0:python-2.4.*:lang/python/2.4 \
		art_lgpl_2.5::graphics/libart \
		wv2::converters/wv2 \
		Magick::graphics/ImageMagick \
		jbig::graphics/jbigkit \
		mysqlclient::databases/mysql \
		ruby::lang/ruby


WANTLIB=	ICE SM X11 Xext Xrender artsflow artsflow_idl audiofile bz2 c \
		esd freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		gsf-1 gthread-2.0.0.0 iconv intl jasper jpeg kmedia2_idl lcms \
		m mad mcop ogg ossaudio pcre pcreposix png pthread qtmcop \
		soundserver_idl stdc++ tiff util vorbis vorbisenc vorbisfile \
		xml2 xslt z Xt termcap Xi fontconfig crypto readline ssl \
		IlmImf Half Imath Iex idn


CONFIGURE_ARGS+= --with-pgsqlincdir=${LOCALBASE}/include/postgresql
LIB_DEPENDS+=	pqxx::databases/libpqxx \
		pq::databases/postgresql


USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static
.include <bsd.port.mk>
