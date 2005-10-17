# $OpenBSD: Makefile,v 1.51 2005/10/17 11:28:25 espie Exp $

COMMENT=		"K Desktop Environment, graphic applications"
COMMENT-kamera=		"KDE interface to digital cameras"
COMMENT-kpov=		"KDE modeller for povray"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.3
DISTNAME=		kdegraphics-${VERSION}
MODKDE_VERSION=		3.4

FLAVORS=debug
SEPARATE_BUILD=flavored
MULTI_PACKAGES=-kpov -kamera
PKGNAME=${DISTNAME}
FULLPKGNAME-kamera=kamera-${VERSION}
FULLPKGNAME-kpov=kpovmodeller-${VERSION}
SUBPACKAGE?=

LIB_DEPENDS= \
	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kjs,kio,kparts,kutils,kwalletclient::x11/kde/libs3 \
	fribidi::devel/fribidi \
	t1.5::devel/t1lib
WANTLIB=	X11 art_lgpl_2 pthread ICE png util jpeg z SM Xext m Xft

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-kamera"
LIB_DEPENDS+=	gphoto2,gphoto2_port::graphics/libgphoto2
WANTLIB+=	iconv exif Xrender intl
.  elif ${SUBPACKAGE} == "-kpov"
RUN_DEPENDS+=	::graphics/povray
WANTLIB+=	GL stdc++ freetype Xrender Xmu GLU c Xi
.  elif ${SUBPACKAGE} == ""
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS+=	Imlib::graphics/imlib \
		ungif::graphics/libungif \
		Iex,Half,Imath,IlmImf::graphics/openexr
WANTLIB+=	tiff fontconfig lcms Xrender ICE c \
		freetype stdc++ pcreposix pcre Xxf86vm SM Xext
.  endif
.else
LIB_DEPENDS+=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	gphoto2,gphoto2_port::graphics/libgphoto2
.endif
BUILD_DEPENDS+=	::print/teTeX/base \
		:pkgconfig-*:devel/pkgconfig

CONFIGURE_ENV+=	\
	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-patch:
	@cp ${FILESDIR}/part_init.cpp ${WRKSRC}/kghostview

.if ${MACHINE_ARCH} == "sparc64"
SUP_PATCH_LIST=	gcc-*
.endif

.include <bsd.port.mk>
