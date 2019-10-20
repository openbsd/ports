# $OpenBSD: Makefile,v 1.12 2019/10/20 08:03:00 ajacoutot Exp $

COMMENT =	GNUstep frontent to libgphoto2

DISTNAME =	Camera-0.8
REVISION =	9
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/gsimageapps/
MASTER_SITES =	http://download.gna.org/gsimageapps/

MODULES =	x11/gnustep
WANTLIB =	gphoto2 gphoto2_port
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS =	graphics/libgphoto2

WRKDIST = 	${WRKDIR}/Camera

.include <bsd.port.mk>
