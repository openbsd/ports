# $OpenBSD: Makefile,v 1.323 2019/11/11 19:01:06 ajacoutot Exp $

COMMENT=		general-purpose utility library

GNOME_PROJECT=		glib
GNOME_VERSION=		2.62.2
PKGNAME=		${DISTNAME:S/glib/glib2/}
REVISION=		8

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# according to upstream, there should never be a need to bump major; doing so
# would trigger an abort():
# GLib-GObject:ERROR:gvaluetypes.c:457:_g_value_types_init:
# assertion failed: (type == G_TYPE_CHAR)
SHARED_LIBS +=  glib-2.0             4201.3    # 0.6200.2
SHARED_LIBS +=  gmodule-2.0          4200.10   # 0.6200.2
SHARED_LIBS +=  gthread-2.0          4200.10   # 0.6200.2
SHARED_LIBS +=  gobject-2.0          4200.10   # 0.6200.2
SHARED_LIBS +=  gio-2.0              4200.10   # 0.6200.2

# LGPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c elf>=2 ffi iconv intl pcre pthread z

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# meson: have_bash, needed to install bash-completion snippets
BUILD_DEPENDS +=	shells/bash

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/pcre \
			devel/libffi

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (stack >= 24576)
BUILD_DEPENDS +=	x11/dbus
TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		devel/desktop-file-utils \
			x11/dbus

CONFIGURE_ARGS=		-Dselinux=disabled \
			-Dxattr=false \
			-Dlibmount=false \
			-Dman=true

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
