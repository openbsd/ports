# $OpenBSD: Makefile,v 1.50 2021/12/24 22:10:05 sdk Exp $

COMMENT=	graphical multiplayer 3D tank war game

V=		2.4.22
DISTNAME=	bzflag-${V}
CATEGORIES=	games x11
MASTER_SITES=	https://download.bzflag.org/bzflag/source/${V}/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.bzflag.org/

# LGPLv2.1 only or MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE SDL2 SM X11
WANTLIB += X11-xcb Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xss Xt Xxf86vm c cares crypto
WANTLIB += curl curses drm expat glapi m nghttp2 pthread
WANTLIB += samplerate sndio ssl usbhid xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-shm xcb-sync xcb-xfixes
WANTLIB += xshmfence z

# C++11
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/sdl2 \
		graphics/glew \
		net/curl \
		net/libcares
RUN_DEPENDS=	devel/desktop-file-utils

SEPARATE_BUILD=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_lib_bind_gethostent=no
CONFIGURE_ARGS=	--disable-static

# Do not configure bundled software we don't use.  This also avoids
# build failures from those configures picking up dependencies that
# happen to be temporarily installed during part of the configure run.
CONFIGURE_ARGS+=--no-recursion

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@mv ${PREFIX}/share/bzflag/bzflag.desktop \
	    ${PREFIX}/share/applications
	perl -pi -e "s,^Exec=.*,Exec=bzflag,g;" \
		-e "s,^Icon=.*,Icon=${TRUEPREFIX}/share/bzflag/bzflag-48x48.png,g" \
		${PREFIX}/share/applications/bzflag.desktop
	@find ${PREFIX}/lib/bzflag -name '*.la' -delete

.include <bsd.port.mk>
