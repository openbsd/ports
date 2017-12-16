# $OpenBSD: Makefile,v 1.44 2017/12/16 10:40:01 kirby Exp $

COMMENT=	graphical multiplayer 3D tank war game

V=		2.4.12
DISTNAME=	bzflag-${V}
CATEGORIES=	games x11
MASTER_SITES=	https://download.bzflag.org/bzflag/source/${V}/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.bzflag.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL GLU SDL2 X11 X11-xcb Xdamage Xext Xfixes Xxf86vm
WANTLIB += c cares crypto curl drm expat glapi m ncurses
WANTLIB += nghttp2 pthread sndio ssl usbhid xcb xcb-dri2
WANTLIB += xcb-glx z ${COMPILER_LIBCXX}

# c++0x
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
