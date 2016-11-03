# $OpenBSD: Makefile,v 1.30 2016/11/03 10:37:34 ajacoutot Exp $

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.22.2
REVISION=		0

SHARED_LIBS +=	egg-private               0.0 # 0.0
SHARED_LIBS +=  panel-gtk                 0.0 # 0.0
SHARED_LIBS +=	rg                        0.0 # 0.0
SHARED_LIBS +=	search                    0.0 # 0.0
SHARED_LIBS +=  template-glib-1.0         0.0 # 0.0
SHARED_LIBS +=  gstyle-private            0.0 # 0.0
SHARED_LIBS +=  idemm-1.0                 0.0 # 0.0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atkmm-1.6 atspi c cairo cairo-gobject
WANTLIB += cairomm-1.0 clang crypto curl dbus-1 devhelp-3 drm
WANTLIB += enchant epoxy expat ffi fontconfig freetype gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 girepository-1.0
WANTLIB += git2 git2-glib-1.0 glapi glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkmm-3.0 gtksourceview-3.0 harfbuzz harfbuzz-icu hogweed
WANTLIB += hyphen iconv icudata icui18n icuuc idn intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lzma m nettle nghttp2 notify orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pcre2-8 peas-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 sigc-2.0 soup-2.4 sqlite3 ssh2 ssl stdc++
WANTLIB += tasn1 util vala-0.34 vte-2.91 webkit2gtk-4.0 webp xcb
WANTLIB += xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes xml2
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

BUILD_DEPENDS=		devel/ectags \
			devel/mm-common
RUN_DEPENDS=		devel/ectags

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/libgit2/libgit2-glib \
			devel/libpeas \
			devel/llvm \
			devel/vte3 \
			lang/vala \
			x11/gnome/devhelp \
			x11/gtksourceview3 \
			x11/gtk3mm

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
