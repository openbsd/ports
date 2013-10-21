# $OpenBSD: Makefile,v 1.2 2013/10/21 08:16:00 sebastia Exp $

COMMENT =	GNUstep frontent to libgphoto2

DISTNAME =	Camera-0.8
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/gsimageapps/
MASTER_SITES =	http://download.gna.org/gsimageapps/

MODULES =	x11/gnustep
WANTLIB =	c m pthread gphoto2 gphoto2_port
LIB_DEPENDS =	graphics/libgphoto2

WRKDIST = 	${WRKDIR}/Camera

pre-configure:
	cp ${FILESDIR}/Camera.tif \
		${WRKDIST}/Images

.include <bsd.port.mk>
