COMMENT=		RSI prevention tool

V=			1.10.54
DISTNAME=		workrave-v${V}
PKGNAME=		workrave-${V}
WRKDIST=		${WRKDIR}/workrave-${V}

SHARED_LIBS +=  workrave-private-1.0 1.0      # unknown
SHARED_LIBS +=  workrave-gtk4-private-1.0 0.0      # unknown

CATEGORIES=		productivity x11

HOMEPAGE=		http://www.workrave.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE LLVM Lerc SM X11 X11-xcb
WANTLIB += Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xss Xtst Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi avahi-client avahi-common c cairo cairo-gobject
WANTLIB += cairo-script-interpreter cairomm-1.0 crypto cups dav1d
WANTLIB += dbus-1 drm drm_amdgpu elf epoll-shim epoxy
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gbm
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glapi
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 graphene-1.0
WANTLIB += graphite2 gstallocators-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstgl-1.0 gstpbutils-1.0 gstplay-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtk-4 gtkmm-3.0
WANTLIB += harfbuzz harfbuzz-subset iconv intl jpeg lzma lzo2
WANTLIB += m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pciaccess pcre2-8 pixman-1 png rsvg-2 sigc-2.0 ssl
WANTLIB += tiff vulkan wayland-client wayland-cursor wayland-egl
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-randr
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xkbcommon xml2
WANTLIB += xshmfence z zstd

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB += drm_intel
.endif

SITES=			https://github.com/rcaelers/workrave/releases/download/v${V:S/./_/g}/

MODULES=		lang/python \
			textproc/intltool

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/boost \
			devel/gobject-introspection \
			www/py-jinja2

LIB_DEPENDS=		multimedia/gstreamer1/core \
			x11/gtk3mm \
			x11/gtk+4

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

# c++11
COMPILER=		base-clang ports-gcc

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

CONFIGURE_ARGS=		--disable-gconf \
			--disable-xml \
			--disable-pulse

# could be enabled if requested (needs testing)
CONFIGURE_ARGS +=	--disable-gsettings \
			--disable-gnome3 \
			--disable-indicator \
			--disable-xfce \
			--disable-mate \
			--disable-distribution

# /usr/include/c++/v1/__locale:62:3: error: unknown type name 'locale_t'
pre-configure:
	find ${WRKDIST} -name Makefile.in -exec \
		sed -i 's/-D_XOPEN_SOURCE=600/-D_XOPEN_SOURCE=700 -D_BSD_SOURCE/' '{}' \+

# disabled in CONFIGURE_ARGS
post-install:
	rm -rf ${PREFIX}/share/{cinnamon,gnome-shell}

.include <bsd.port.mk>
