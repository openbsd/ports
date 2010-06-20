# $OpenBSD: Makefile,v 1.25 2010/06/20 16:31:02 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	educational game for children

DISTNAME=	gcompris-9.3

CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo croco-0.6
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gsf-1
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 util xcb xcb-render xcb-render-util xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gcompris/}

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=	::x11/py-gtk2 \
		::games/gnuchess \
		::archivers/gtar
LIB_DEPENDS=	python${MODPY_VERSION}::lang/python/${MODPY_VERSION} \
		gnet-2.0::net/gnet \
		sqlite3::databases/sqlite3 \
		gstreamer-0.10:gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core
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

post-install:
	find ${PREFIX}/share/gcompris -type f -perm 755 -exec chmod 644 {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gcompris

.include <bsd.port.mk>
