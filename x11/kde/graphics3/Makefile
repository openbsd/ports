# $OpenBSD: Makefile,v 1.31 2004/03/07 21:08:44 espie Exp $

COMMENT=		"X11 toolkit, graphic applications"
COMMENT-kamera=		"kde interface to digital cameras"
COMMENT-kpov=		"modeller for povray"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		kdegraphics-${VERSION}
MODKDE_VERSION=		3.2

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

.include <bsd.port.mk>
