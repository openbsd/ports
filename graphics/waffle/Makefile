COMMENT=	OpenGL API/window system abstraction
DISTNAME=	waffle-1.6.3
CATEGORIES=	x11 graphics
HOMEPAGE=	https://mesa.pages.freedesktop.org/waffle/
MASTER_SITES=	${HOMEPAGE}files/release/${DISTNAME}/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE=	Yes

SHARED_LIBS+=	waffle-1 1.0 # 1.6
WANTLIB=	X11 X11-xcb c pthread xcb
MODULES=	devel/meson

CONFIGURE_ARGS=	-Dgbm=enabled \
		-Dglx=enabled \
		-Dx11_egl=enabled \
		-Dwayland=disabled

.include <bsd.port.mk>
