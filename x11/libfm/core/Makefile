COMMENT=		glib/gio-based lib for file management
REVISION=		2

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 epoxy
WANTLIB += execinfo exif expat ffi fm-extra fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl jpeg m menu-cache pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png xcb xcb-render xcb-shm z

BUILD_DEPENDS=		lang/vala

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gnome/gvfs

LIB_DEPENDS=		graphics/libexif \
			x11/libfm/extra \
			x11/menu-cache \
			x11/gtk+3

CONFIGURE_ARGS=		--with-gtk=3

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/libfm

post-install:
	rm ${PREFIX}/lib/libfm/modules/*.a

# libfm-extra
	rm ${PREFIX}/include/libfm-1.0/fm-{extra,version,xml-file}.h \
		${PREFIX}/lib/libfm-extra.* \
		${PREFIX}/lib/pkgconfig/libfm-extra.pc

.include <bsd.port.mk>
