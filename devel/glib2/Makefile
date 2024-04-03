COMMENT=		general-purpose utility library

GNOME_PROJECT=		glib
GNOME_VERSION=		2.80.0
PKGNAME=		${DISTNAME:S/glib/glib2/}

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# according to upstream, there should never be a need to bump major; doing so
# would trigger an abort():
# GLib-GObject:ERROR:gvaluetypes.c:457:_g_value_types_init:
# assertion failed: (type == G_TYPE_CHAR)
SHARED_LIBS += glib-2.0                  4201.12 # 0.8000.0
SHARED_LIBS += gobject-2.0               4200.19 # 0.8000.0
SHARED_LIBS += gthread-2.0               4200.19 # 0.8000.0
SHARED_LIBS += gmodule-2.0               4200.19 # 0.8000.0
SHARED_LIBS += gio-2.0                   4200.19 # 0.8000.0
SHARED_LIBS += girepository-2.0          0.0 # 0.8000.0

# LGPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c elf ffi iconv intl m pcre2-8 pthread z

MODULES=		devel/meson \
			lang/python \
			x11/gnome

# Tests in cpp.cxx now require C++11
COMPILER=		base-clang ports-gcc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# gdbus-codegen(1)
BUILD_DEPENDS +=	sysutils/py-packaging${MODPY_FLAVOR}
RUN_DEPENDS +=		sysutils/py-packaging${MODPY_FLAVOR}

# rst2html5
BUILD_DEPENDS +=	textproc/py-docutils${MODPY_FLAVOR}

# meson: have_bash, needed to install bash-completion snippets
BUILD_DEPENDS +=	shells/bash
# needed to get the value of 'completionsdir' in gio/meson.build; otherwise
# dpb(1) may junk the pkg-config file before we try to use it
BUILD_DEPENDS +=	shells/bash-completion

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
			-Dman-pages=enabled \
			-Druntime_dir=/var/run

# Don't set G_ENABLE_DEBUG by default
CONFIGURE_ARGS +=	-Dglib_debug=disabled

# XXX  handle cyclic dependency: glib2 -> g-o-i -> glib2;
# do NOT add an entry to devel/Makefile, used for building gobject-introspection
FLAVORS=		bootstrap
FLAVOR?=
.if ${FLAVOR:Mbootstrap}
# we don't want anyone to use this package directly
PERMIT_PACKAGE=		No
CONFIGURE_ARGS +=	-Dintrospection=disabled
.else
BUILD_DEPENDS +=	devel/gobject-introspection
PKGSPEC=		glib2-*-!bootstrap
.endif

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
		${WRKSRC}/docs/reference/gio/glib-compile-schemas.rst

# own this directory
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gio/modules

.include <bsd.port.mk>
