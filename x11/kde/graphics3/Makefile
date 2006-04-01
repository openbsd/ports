# $OpenBSD: Makefile,v 1.58 2006/04/01 10:49:20 espie Exp $

COMMENT=		"K Desktop Environment, graphic applications"
COMMENT-kamera=		"KDE interface to digital cameras"
COMMENT-kpov=		"KDE modeller for povray"
COMMENT-sane=		"KDE interface to scanners"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.2
DISTNAME=		kdegraphics-${VERSION}
MODKDE_VERSION=		3.5.2

FLAVORS=debug
SEPARATE_BUILD=flavored
MULTI_PACKAGES=-kpov -kamera -sane
PKGNAME=${DISTNAME}
PKGNAME-kamera=kamera-${VERSION}
PKGNAME-kpov=kpovmodeller-${VERSION}
PKGNAME-sane=ksane-${VERSION}
SHARED_LIBS=		kghostviewlib	1.0 \
			kimageviewer	1.0 \
			kmultipage	1.0 \
			ksvg		1.0 \
			text2path	1.0 \
			kpovmodeler	1.0 \
			kscan		2.0
SUBPACKAGE?=

BUILD_DEPENDS+=	::print/teTeX/base \
		:pkgconfig-*:devel/pkgconfig


WANTLIB+=	X11 art_lgpl_2 pthread ICE png util jpeg z SM Xext m

LIB_DEPENDS+=	
	

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == ""
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS+= \
	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kjs,kio,kparts,kutils,kwalletclient::x11/kde/libs3
LIB_DEPENDS+=	Imlib::graphics/imlib \
		ungif::graphics/libungif \
		Iex,Half,Imath,IlmImf::graphics/openexr \
		fribidi::devel/fribidi

WANTLIB+=	tiff fontconfig lcms Xrender ICE c \
		freetype stdc++ pcreposix pcre Xxf86vm SM Xext Xft
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-kpov"
LIB_DEPENDS+= kwalletclient,DCOP,kdecore.6,kio,kparts,kdeui,kdefx,kdesu::x11/kde/libs3
RUN_DEPENDS+=	::graphics/povray
WANTLIB+=	GL stdc++ freetype Xrender Xmu GLU c Xi
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-kamera"
LIB_DEPENDS+= kwalletclient,DCOP,kdecore.6,kio,kdeui,kdefx,kdesu::x11/kde/libs3
LIB_DEPENDS+=	gphoto2,gphoto2_port::graphics/libgphoto2
WANTLIB+=	iconv exif Xrender intl 
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE:L} == "-sane"
LIB_DEPENDS+= kwalletclient,ktexteditor,DCOP,vcard,kabc,kparts,kdeui,kdesu,kdecore.6,kio,kresources,kdefx,kspell,kdeprint::x11/kde/libs3
LIB_DEPENDS+=	sane::graphics/sane-backends
WANTLIB+=	usb tiff stdc++ c Xrender
.endif

CONFIGURE_ENV+=	\
	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-patch:
	@cp ${FILESDIR}/part_init.cpp ${WRKSRC}/kghostview

.if ${MACHINE_ARCH} == "sparc64"
SUP_PATCH_LIST=	gcc-*
.endif

USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static
CONFIGURE_ENV+=TIFF_LIBS='-L${LOCALBASE}/lib -ltiff -ljpeg -lz' \
		TIFF_CFLAGS='-I${LOCALBASE}/include'

.include <bsd.port.mk>
