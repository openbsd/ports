COMMENT=		general-purpose utility library

GNOME_PROJECT=		glib
GNOME_VERSION=		2.74.3
PKGNAME=		${DISTNAME:S/glib/glib2/}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# https://gitlab.gnome.org/GNOME/glib/-/merge_requests/3125
MASTER_SITES0=		https://gitlab.gnome.org/GNOME/glib/-/commit/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		e16fb83755e08a4c2da2b0a8ea0fc2e27b1154bf.patch:0 \
			31ec4dd01ada306ef1419badb5f701832ad5ad8e.patch:0

# according to upstream, there should never be a need to bump major; doing so
# would trigger an abort():
# GLib-GObject:ERROR:gvaluetypes.c:457:_g_value_types_init:
# assertion failed: (type == G_TYPE_CHAR)
SHARED_LIBS += glib-2.0                  4201.9 # 0.7400.3
SHARED_LIBS += gobject-2.0               4200.16 # 0.7400.3
SHARED_LIBS += gthread-2.0               4200.16 # 0.7400.3
SHARED_LIBS += gmodule-2.0               4200.16 # 0.7400.3
SHARED_LIBS += gio-2.0                   4200.16 # 0.7400.3

# LGPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c elf>=2 ffi iconv intl pcre2-8 pthread z

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook

# Tests in cpp.cxx now require C++11
COMPILER=		base-clang ports-gcc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# meson: have_bash, needed to install bash-completion snippets
BUILD_DEPENDS +=	shells/bash

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/pcre2 \
			devel/libffi

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (stack >= 24576)
BUILD_DEPENDS +=	x11/dbus
TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		devel/desktop-file-utils \
			x11/dbus

CONFIGURE_ARGS=		-Dselinux=disabled \
			-Dxattr=false \
			-Dlibmount=disabled \
			-Dman=true

# Don't set G_ENABLE_DEBUG by default
CONFIGURE_ARGS +=	-Dglib_debug=disabled

pre-configure:
	sed -i -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c \
		${WRKSRC}/gio/xdgmime/xdgmime.c
	sed -i "s,/usr/share/locale,${LOCALBASE}/share/locale,g" \
		${WRKSRC}/glib/gcharset.c
	sed -i "s,/usr/share/applications,${LOCALBASE}/share/applications,g" \
		${WRKSRC}/gio/tests/desktop-app-info.c
	sed -i "s,/usr/share,${PREFIX}/share,g" \
		${WRKSRC}/docs/reference/gio/glib-compile-schemas.xml

# own this directory
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gio/modules

.include <bsd.port.mk>
