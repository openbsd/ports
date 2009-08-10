# $OpenBSD: Makefile,v 1.19 2009/08/10 06:31:42 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	educational game for children

DISTNAME=	gcompris-8.4.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gcompris/}

WANTLIB=	Xau Xdmcp X11 Xext Xrender Xcomposite atk-1.0 c cairo z \
		Xdamage fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 xml2 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 util pcre \
		pangoft2-1.0 pixman-1 png pthread Xxf86vm expat Xcursor \
		Xfixes Xi Xinerama Xrandr art_lgpl_2 gailutil gio-2.0 \
		pthread-stubs xcb

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=	::textproc/texi2html \
		::x11/py-gtk2 \
		::games/gnuchess \
		::archivers/gtar
LIB_DEPENDS=	python${MODPY_VERSION}::lang/python/${MODPY_VERSION} \
		gnet-2.0::net/gnet \
		sqlite3::databases/sqlite3 \
		gnomecanvas-2::x11/gnome/libgnomecanvas \
		gstreamer-0.10:gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core
RUN_DEPENDS=	::games/gnuchess \
		::databases/py-sqlite2 \
		::x11/py-gtk2 \
		::games/tuxpaint \
		::cad/gnucap \
		:desktop-file-utils-*:devel/desktop-file-utils \
		::multimedia/gstreamer-0.10/plugins-base,-ogg \
		::multimedia/gstreamer-0.10/plugins-base,-vorbis \
		::multimedia/gstreamer-0.10/plugins-good,-gconf \
		:yelp-*:x11/gnome/yelp

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--localstatedir=/var \
		--enable-xf86vidmode \
		--enable-sqlite \
		--enable-gnet \
		--enable-py-build-only \
		--disable-cairo \
		--disable-nsbundle \
		--with-x \
		--with-python=${MODPY_BIN}

post-install:
	find ${PREFIX}/share/gcompris -type f -perm 755 -exec chmod 644 {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gcompris

.include <bsd.port.mk>
