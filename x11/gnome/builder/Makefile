# $OpenBSD: Makefile,v 1.9 2015/05/20 13:35:30 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.16.3
REVISION=		0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += clang crypto dbus-1 devhelp-3 drm enchant epoxy expat
WANTLIB += ffi fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 git2 git2-glib-1.0 gjs glapi
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz harfbuzz-icu
WANTLIB += hogweed icudata icui18n icuuc javascriptcoregtk-4.0
WANTLIB += jpeg lzma m mozjs-24 ncurses ncursesw nettle notify
WANTLIB += nspr4 orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline secret-1 soup-2.4 sqlite3 ssh2 ssl stdc++
WANTLIB += tasn1 util webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shape xcb-shm xcb-xfixes xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

# sync with devel/spidermonkey
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c c++

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		devel/libgit2/libgit2-glib \
			devel/llvm \
			x11/gnome/devhelp \
			x11/gnome/gjs \
			x11/gtksourceview3

CONFIGURE_ENV=		ac_cv_path_PYTHON3_CONFIG=python${MODPY_VERSION}-config

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386} # needs 64-bit atomic ops
CFLAGS+=		-march=i586
CXXFLAGS+=		-march=i586
.endif

.include <bsd.port.mk>
