COMMENT=		glib/gio-based lib for file management

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo exif
WANTLIB += expat ffi fm-extra fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += m menu-cache pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png xcb xcb-render xcb-shm z

BUILD_DEPENDS=		lang/vala

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gnome/gvfs

LIB_DEPENDS=		graphics/libexif \
			x11/libfm/extra \
			x11/menu-cache \
			x11/gtk+2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/libfm

post-install:
	rm ${PREFIX}/lib/libfm/modules/*.a

# libfm-extra
	rm ${PREFIX}/include/libfm-1.0/fm-{extra,version,xml-file}.h \
		${PREFIX}/lib/libfm-extra.* \
		${PREFIX}/lib/pkgconfig/libfm-extra.pc

.include <bsd.port.mk>
