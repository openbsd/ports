# $OpenBSD: Makefile,v 1.38 2004/09/18 09:36:44 espie Exp $

COMMENT=		"K Desktop Environment, graphic applications"
COMMENT-kamera=		"KDE interface to digital cameras"
COMMENT-kpov=		"KDE modeller for povray"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.0
DISTNAME=		kdegraphics-${VERSION}
MODKDE_VERSION=		3.3.0

FLAVORS=debug
SEPARATE_BUILD=flavored
MULTI_PACKAGES=-kpov -kamera
FULLPKGNAME-kamera=kamera-${VERSION}
FULLPKGNAME-kpov=kpovmodeller-${VERSION}
SUBPACKAGE?=

LIB_DEPENDS= \
	kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kjs,kio,kparts,kutils,kwalletclient::x11/kde/libs3 \
	fribidi::devel/fribidi

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-kamera"
LIB_DEPENDS+=	gphoto2,gphoto2_port::graphics/libgphoto2
.  elif ${SUBPACKAGE} == "-kpov"
RUN_DEPENDS+=	::graphics/povray
.  elif ${SUBPACKAGE} == ""
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS+=	Imlib::graphics/imlib \
		ungif::graphics/libungif
.  endif
.else
LIB_DEPENDS+=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	gphoto2,gphoto2_port::graphics/libgphoto2
.endif
BUILD_DEPENDS+=::print/teTeX/base

CONFIGURE_ENV+=	\
	PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-patch:
	@cp ${FILESDIR}/part_init.cpp ${WRKSRC}/kghostview

.if ${MACHINE_ARCH} == "sparc64"
SUP_PATCH_LIST=	gcc-*
.endif

.include <bsd.port.mk>
