# $OpenBSD: Makefile,v 1.54 2013/05/31 15:34:45 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	educational game for children

DISTNAME=	gcompris-12.11
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += croco-0.6 drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rsvg-2 sqlite3 stdc++ util
WANTLIB += xcb xcb-render xcb-shm xml2 z harfbuzz
WANTLIB += ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gcompris/}

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=	textproc/texi2html \
		x11/py-gtk2 \
		games/gnuchess \
		archivers/gtar
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core \
		x11/gnome/librsvg \
		x11/gtk+2
RUN_DEPENDS=	games/gnuchess \
		databases/py-sqlite2 \
		x11/py-gtk2 \
		games/tuxpaint \
		cad/gnucap \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-base

USE_GMAKE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread" \
		ac_cv_path_TETEX=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-nsbundle \
		--disable-sdlmixer \
		--disable-sugar \
		--disable-gnet \
		--enable-sqlite \
		--enable-py-build-only \
		--with-python=${MODPY_BIN}

# don't install under share/gnome/help/, there is no yelp (xml) file
FAKE_FLAGS=	gcompris_helpdir=${PREFIX}/share/doc/gcompris/html

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/chess_computer-activity/chess.c \
		${WRKSRC}/src/electric-activity/electric.py

post-install:
	find ${PREFIX}/share/gcompris -type f -perm 755 -exec chmod 644 {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gcompris

.include <bsd.port.mk>
