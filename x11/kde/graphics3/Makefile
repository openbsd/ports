# $OpenBSD: Makefile,v 1.72 2007/08/03 00:46:29 kili Exp $

COMMENT-main=		K Desktop Environment, graphic applications
COMMENT-kamera=		KDE interface to digital cameras
COMMENT-kpov=		KDE modeller for povray
COMMENT-sane=		KDE interface to scanners
CATEGORIES=		x11 x11/kde
VERSION=		3.5.7
DISTNAME=		kdegraphics-${VERSION}
MODKDE_VERSION=		3.5.7

FLAVORS=debug
SEPARATE_BUILD=flavored
MULTI_PACKAGES=-main -kpov -kamera -sane
PKGNAME=${DISTNAME}

PKGNAME-main=	${DISTNAME}p0
PKGNAME-kamera=	kamera-${VERSION}
PKGNAME-kpov=	kpovmodeller-${VERSION}
PKGNAME-sane=	ksane-${VERSION}

MASTER_SITES0=		ftp://ftp.kde.org/pub/kde/security_patches/
PATCHFILES=		post-3.5.7-kdegraphics-CVE-2007-3387.diff:0

SHARED_LIBS +=	kghostviewlib        1.0      # .0.0
SHARED_LIBS +=	kpovmodeler          1.0      # .0.0
SHARED_LIBS +=	text2path            1.0      # .0.0
SHARED_LIBS +=	ksvg                 1.0      # .0.1
SHARED_LIBS +=	kimageviewer         1.0      # .0.0
SHARED_LIBS +=	kmultipage           1.0      # .0.0
SHARED_LIBS +=	kscan                2.0      # .1.0

BUILD_DEPENDS=		::print/teTeX/base
LIB_DEPENDS=		kdecore.>=6,DCOP,kio,kwalletclient,kdefx,kdeui,kdesu::x11/kde/libs3
WANTLIB=		X11 art_lgpl_2 pthread ICE png util jpeg z SM Xext \
			m idn iconv Xau Xdmcp fam rpcsvc stdc++


RUN_DEPENDS-main=	:ghostscript-*:print/ghostscript/gnu
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
			cairo expat glitz


LIB_DEPENDS-kpov=	${LIB_DEPENDS} \
			kparts::x11/kde/libs3
RUN_DEPENDS-kpov=	::graphics/povray
WANTLIB-kpov=		${WANTLIB} GL freetype Xrender Xmu GLU c Xi  Xt


LIB_DEPENDS-kamera= 	${LIB_DEPENDS} \
			gphoto2,gphoto2_port::graphics/libgphoto2
WANTLIB-kamera=		${WANTLIB} exif Xrender intl


LIB_DEPENDS-sane= 	${LIB_DEPENDS-kamera} \
			ktexteditor,vcard,kabc,kparts,kresources,kspell,kdeprint::x11/kde/libs3 \
			sane::graphics/sane-backends
WANTLIB-sane=		${WANTLIB-kamera} usb tiff c


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
