# $OpenBSD: Makefile,v 1.5 2014/11/21 18:21:21 sebastia Exp $

COMMENT =	GNUstep frontent to libgphoto2

DISTNAME =	Camera-0.8
REVISION =	2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/gsimageapps/
MASTER_SITES =	http://download.gna.org/gsimageapps/

MODULES =	x11/gnustep
WANTLIB =	gphoto2 gphoto2_port
LIB_DEPENDS =	graphics/libgphoto2

WRKDIST = 	${WRKDIR}/Camera

.include <bsd.port.mk>
