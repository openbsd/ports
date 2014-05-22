# $OpenBSD: Makefile,v 1.4 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	GNUstep frontent to libgphoto2

DISTNAME =	Camera-0.8
REVISION =	1
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/gsimageapps/
MASTER_SITES =	http://download.gna.org/gsimageapps/

MODULES =	x11/gnustep
WANTLIB =	gphoto2 gphoto2_port
LIB_DEPENDS =	graphics/libgphoto2

WRKDIST = 	${WRKDIR}/Camera

.include <bsd.port.mk>
