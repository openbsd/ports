# $OpenBSD: Makefile,v 1.1.1.1 2013/10/19 14:17:51 sebastia Exp $

COMMENT =	GNUstep wrapper around libgphoto2

V =		20041011
DISTNAME =	CameraKit-${V}
PKGNAME =	gnustep-camerakit-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	graphics

SHARED_LIBS =	CameraKit 0.0

HOMEPAGE =	http://home.gna.org/gsimageapps/
MASTER_SITES =	http://download.gna.org/gsimageapps/

MODULES =	x11/gnustep
WANTLIB =	pthread gphoto2
LIB_DEPENDS =	graphics/libgphoto2

MODGNUSTEP_NEEDS_GUI =	No
MODGNUSTEP_NEEDS_BASE =	No

WRKDIST =	${WRKDIR}/CameraKit

MAKE_ENV +=	CameraKit_INTERFACE_VERSION=${LIBCameraKit_VERSION}

.include <bsd.port.mk>
