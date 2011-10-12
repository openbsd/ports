# $OpenBSD: Makefile,v 1.15 2011/10/12 07:57:29 jasper Exp $

COMMENT =	digital photo organizer

DISTNAME =	shotwell-0.11.1
REVISION=	1
CATEGORIES =	graphics
MASTER_SITES =	http://yorba.org/download/shotwell/0.11/
HOMEPAGE =	http://yorba.org/shotwell/
EXTRACT_SUFX =	.tar.bz2

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm exif exiv2 expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gee gexiv2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 stdc++ unique-1.0 usb webkitgtk-1.0
WANTLIB += xcb xcb-render xcb-shm xml2 z gconf-2

MODULES =	devel/dconf devel/gettext x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE =		yes

RUN_DEPENDS +=	x11/gnome/librsvg

BUILD_DEPENDS =	lang/vala>=0.12

LIB_DEPENDS =	x11/gtk+2 \
		graphics/libgexiv2 \
		graphics/libraw \
		www/webkit>=1.4.0v0 \
		devel/libunique \
		devel/libgee \
		graphics/libgphoto2

NO_REGRESS =	Yes
# beware : configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-schemas-compile \
			--disable-desktop-update \
			--disable-icon-update

MODGCONF2_SCHEMAS_DIR =	shotwell

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/plugins/Makefile.plugin.mk

.include <bsd.port.mk>
