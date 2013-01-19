# $OpenBSD: Makefile,v 1.27 2013/01/19 11:22:37 ajacoutot Exp $

# needs to allocate 512M
VMEM_WARNING =	Yes

COMMENT =	digital photo organizer

DISTNAME =	shotwell-0.13.1
CATEGORIES =	graphics
MASTER_SITES =	http://yorba.org/download/shotwell/stable/
HOMEPAGE =	http://yorba.org/shotwell/
EXTRACT_SUFX =	.tar.xz
REVISION =	0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm exif exiv2 expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee gexiv2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-3 javascriptcoregtk-3.0
WANTLIB += lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs raw rest-0.7 soup-2.4
WANTLIB += sqlite3 stdc++ unique-3.0 webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 z atk-bridge-2.0 harfbuzz json-glib-1.0

MODULES =	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE =	yes

RUN_DEPENDS +=	x11/gnome/librsvg \
		x11/gtk+2,-guic

BUILD_DEPENDS =	lang/vala>=0.16.0

LIB_DEPENDS =	devel/json-glib \
		devel/libgee06 \
		devel/libunique3 \
		graphics/libgexiv2>=0.4.1 \
		graphics/libgphoto2>=2.5.0 \
		graphics/libraw>=0.14.5 \
		net/librest \
		www/webkit,gtk3>=1.6.1v0

NO_REGRESS =	Yes
# beware: configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-schemas-compile \
			--disable-desktop-update \
			--disable-icon-update

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/plugins/Makefile.plugin.mk

.include <bsd.port.mk>
