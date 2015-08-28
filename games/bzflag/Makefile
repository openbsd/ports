# $OpenBSD: Makefile,v 1.34 2015/08/28 15:35:24 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	graphical multiplayer 3D tank war game

DISTNAME=	bzflag-2.4.2
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bzflag/}
EXTRACT_SUFX=	.tar.bz2
REVISION=	1

HOMEPAGE=	http://www.bzflag.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL GLEW GLU ICE SDL SM X11 Xdamage Xext Xfixes Xi Xmu
WANTLIB += Xt Xxf86vm c cares crypto curl drm idn m ncurses pthread
WANTLIB += sndio ssl stdc++ usbhid xcb z
WANTLIB += X11-xcb Xau Xdmcp glapi pthread-stubs xcb-dri2 xcb-glx

MODULES=	devel/gettext
LIB_DEPENDS=	devel/sdl \
		graphics/glew \
		net/curl \
		net/libcares
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_lib_bind_gethostent=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

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
