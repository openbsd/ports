# $OpenBSD: Makefile,v 1.32 2010/10/18 18:00:18 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	educational game for children

DISTNAME=	gcompris-9.3
REVISION =	4

CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pixman-1 pthread pthread-stubs util xcb xcb-render
WANTLIB += xcb-render-util xml2 z atk-1.0 cairo croco-0.6 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png rsvg-2 gnet-2.0 sqlite3
WANTLIB += gstreamer-0.10

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gcompris/}

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=	::textproc/texi2html \
		::x11/py-gtk2 \
		::games/gnuchess \
		::archivers/gtar
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		::net/gnet \
		::databases/sqlite3 \
		:gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core \
		::x11/gnome/librsvg
RUN_DEPENDS=	::games/gnuchess \
		::databases/py-sqlite2 \
		::x11/py-gtk2 \
		::games/tuxpaint \
		::cad/gnucap \
		:desktop-file-utils-*:devel/desktop-file-utils \
		::multimedia/gstreamer-0.10/plugins-base \
		:yelp-*:x11/gnome/yelp

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread" \
		ac_cv_path_TETEX=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-silent-rules \
		--disable-nsbundle \
		--disable-sdlmixer \
		--disable-dbus \
		--disable-sugar \
		--localstatedir=/var \
		--enable-sqlite \
		--enable-gnet \
		--enable-py-build-only \
		--with-python=${MODPY_BIN}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/chess_computer-activity/chess.c \
		${WRKSRC}/src/electric-activity/electric.py

post-install:
	find ${PREFIX}/share/gcompris -type f -perm 755 -exec chmod 644 {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gcompris

.include <bsd.port.mk>
