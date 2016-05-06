# $OpenBSD: Makefile,v 1.23 2016/05/06 16:26:20 ajacoutot Exp $

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.20.4

SHARED_LIBS +=	egg-private               0.0 # 0.0
SHARED_LIBS +=  panel-gtk                 0.0 # 0.0
SHARED_LIBS +=	rg                        0.0 # 0.0
SHARED_LIBS +=	search                    0.0 # 0.0
SHARED_LIBS +=  template-glib-1.0         0.0 # 0.0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject clang crypto
WANTLIB += curl dbus-1 devhelp-3 drm enchant epoxy expat ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += git2 git2-glib-1.0 glapi glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz harfbuzz-icu hogweed hyphen iconv icudata
WANTLIB += icui18n icuuc idn intl javascriptcoregtk-4.0 jpeg lzma
WANTLIB += m nettle nghttp2 notify orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 soup-2.4 sqlite3 ssh2 ssl stdc++ tasn1 util
WANTLIB += vala-0.32 vte-2.91 webkit2gtk-4.0 webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shape xcb-shm xcb-xfixes xml2
WANTLIB += xslt z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

# sync with devel/spidermonkey
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c c++

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

BUILD_DEPENDS=		devel/ectags
RUN_DEPENDS=		devel/ectags

LIB_DEPENDS=		devel/libgit2/libgit2-glib \
			devel/libpeas \
			devel/llvm \
			devel/vte3 \
			lang/vala \
			x11/gnome/devhelp \
			x11/gtksourceview3

CONFIGURE_ENV=		ac_cv_path_PYTHON3_CONFIG=python${MODPY_VERSION}-config

# xdg-app is linux-specific (sandboxed apps)
CONFIGURE_ARGS +=	--disable-xdg-app-plugin

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386} # needs 64-bit atomic ops
CFLAGS+=		-march=i586
CXXFLAGS+=		-march=i586
.endif

post-install:
	rm ${PREFIX}/lib/gnome-builder/plugins/*.{a,la}

.include <bsd.port.mk>
