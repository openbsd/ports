# $OpenBSD: Makefile,v 1.23 2003/08/28 05:13:30 brad Exp $

COMMENT=		"X11 toolkit, graphic applications"
COMMENT-kamera=		"kde interface to digital cameras"
COMMENT-kpov=		"modeller for povray"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.3
DISTNAME=		kdegraphics-${VERSION}

SEPARATE_BUILD=flavored
MULTI_PACKAGES=-kpov -kamera
FULLPKGNAME-kamera=kamera-${VERSION}
FULLPKGNAME-kpov=kpovmodeller-${VERSION}
SUBPACKAGE?=

LIB_DEPENDS= \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-kamera"
LIB_DEPENDS+=	gphoto2,gphoto2_port::graphics/libgphoto2
.  elif ${SUBPACKAGE} == "-kpov"
LIB_DEPENDS+=	glut::graphics/glut
RUN_DEPENDS+=	::graphics/povray
.  elif ${SUBPACKAGE} == ""
RUN_DEPENDS+= :ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS+=	Imlib::graphics/imlib \
		ungif::graphics/libungif \
		glut::graphics/glut
.  endif
.else
LIB_DEPENDS+=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	glut::graphics/glut \
	gphoto2,gphoto2_port::graphics/libgphoto2
.endif



#CONFIGURE_ARGS+=--without-kamera

.include <bsd.port.mk>
