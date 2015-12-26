# $OpenBSD: Makefile,v 1.1.1.1 2015/12/26 03:00:13 jsg Exp $

COMMENT=	OpenGL API/window system abstraction
DISTNAME=	waffle-1.5.2
CATEGORIES=	x11 graphics
HOMEPAGE=	http://www.waffle-gl.org/
MASTER_SITES=	${HOMEPAGE}/files/release/${DISTNAME}/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS+=	waffle-1 0.0 # 0.5
WANTLIB=	X11 X11-xcb c pthread xcb
MODULES=	devel/cmake

CONFIGURE_ARGS=	-Dwaffle_has_gbm=1 \
		-Dwaffle_has_glx=1 \
		-Dwaffle_has_x11_egl=1

.include <bsd.port.mk>
