# $OpenBSD: Makefile,v 1.48 2019/07/12 21:02:20 sthen Exp $

COMMENT=	graphical multiplayer 3D tank war game

V=		2.4.14
DISTNAME=	bzflag-${V}
CATEGORIES=	games x11
MASTER_SITES=	https://download.bzflag.org/bzflag/source/${V}/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.bzflag.org/

# LGPLv2.1 only or MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU SDL2 X11 X11-xcb Xdamage Xext Xfixes Xxf86vm
WANTLIB += c cares crypto curl curses drm expat glapi m
WANTLIB += nghttp2 pthread samplerate sndio ssl usbhid xcb
WANTLIB += xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-sync
WANTLIB += xshmfence z ${COMPILER_LIBCXX}

# C++11
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/sdl2 \
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
	@find ${PREFIX}/lib/bzflag -name '*.la' -print | xargs rm

.include <bsd.port.mk>
