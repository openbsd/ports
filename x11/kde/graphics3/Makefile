# $OpenBSD: Makefile,v 1.78 2007/12/18 16:00:12 ajacoutot Exp $

COMMENT-main=		K Desktop Environment, graphic applications
COMMENT-kamera=		KDE interface to digital cameras
COMMENT-kpov=		KDE modeller for povray
COMMENT-sane=		KDE interface to scanners
CATEGORIES=		x11 x11/kde
VERSION=		3.5.8
DISTNAME=		kdegraphics-${VERSION}
MODKDE_VERSION=		3.5.8

FLAVORS=debug
SEPARATE_BUILD=flavored
MULTI_PACKAGES=-main -kpov -kamera -sane
PKGNAME=${DISTNAME}

PKGNAME-main=	${DISTNAME}p3
PKGNAME-kamera=	kamera-${VERSION}
PKGNAME-kpov=	kpovmodeller-${VERSION}p0
PKGNAME-sane=	ksane-${VERSION}p0

MASTER_SITES0=		ftp://ftp.kde.org/pub/kde/security_patches/
PATCHFILES=		post-3.5.8-kdegraphics-kpdf.diff:0

SHARED_LIBS +=	kghostviewlib        1.0      # .0.0
SHARED_LIBS +=	kpovmodeler          1.0      # .0.0
SHARED_LIBS +=	text2path            1.0      # .0.0
SHARED_LIBS +=	ksvg                 1.0      # .0.1
SHARED_LIBS +=	kimageviewer         1.0      # .0.0
SHARED_LIBS +=	kmultipage           1.0      # .0.0
SHARED_LIBS +=	kscan                2.0      # .1.0

BUILD_DEPENDS=		::print/texlive/base
LIB_DEPENDS=		kdecore.>=6,DCOP,kio,kwalletclient,kdefx,kdeui,kdesu::x11/kde/libs3
WANTLIB=		X11 art_lgpl_2 pthread ICE png util jpeg z SM Xext \
			m idn iconv Xau Xdmcp fam rpcsvc stdc++


RUN_DEPENDS-main=${RUN_DEPENDS} \
		:ghostscript-*:print/ghostscript/gnu \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			kdeprint,khtml,kjs,kparts,kutils::x11/kde/libs3 \
			Imlib::graphics/imlib \
			ungif::graphics/libungif \
			Iex,Half,Imath,IlmImf::graphics/openexr \
			fribidi::devel/fribidi \
			paper::print/libpaper \
			poppler::print/poppler \
			poppler-qt::print/poppler,-qt
WANTLIB-main=		${WANTLIB} \
			tiff fontconfig lcms Xrender ICE c \
			freetype pcreposix pcre Xxf86vm SM Xext Xft \
			expat intl xml2


LIB_DEPENDS-kpov=	${LIB_DEPENDS} \
			kparts::x11/kde/libs3
RUN_DEPENDS-kpov=	::graphics/povray \
		:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB-kpov=		${WANTLIB} GL freetype Xrender Xmu GLU c Xi  Xt intl


LIB_DEPENDS-kamera= 	${LIB_DEPENDS} \
			gphoto2,gphoto2_port::graphics/libgphoto2
WANTLIB-kamera=		${WANTLIB} exif Xrender intl ltdl

RUN_DEPENDS-sane=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-sane= 	${LIB_DEPENDS-kamera} \
			ktexteditor,vcard,kabc,kparts,kresources,kspell,kdeprint::x11/kde/libs3 \
			sane::graphics/sane-backends
WANTLIB-sane=		${WANTLIB-kamera} usb tiff c ltdl


CONFIGURE_ENV+=	\
	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-patch:
	@cp ${FILESDIR}/part_init.cpp ${WRKSRC}/kghostview

.if ${MACHINE_ARCH} == "sparc64"
SUP_PATCH_LIST=	gcc-*
.endif

CONFIGURE_ENV+=	TIFF_LIBS='-L${LOCALBASE}/lib -ltiff -ljpeg -lz' \
		TIFF_CFLAGS='-I${LOCALBASE}/include'

.include <bsd.port.mk>
