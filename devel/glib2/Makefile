# $OpenBSD: Makefile,v 1.347 2021/05/29 15:33:37 ajacoutot Exp $

COMMENT=		general-purpose utility library

GNOME_PROJECT=		glib
GNOME_VERSION=		2.68.2
PKGNAME=		${DISTNAME:S/glib/glib2/}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# according to upstream, there should never be a need to bump major; doing so
# would trigger an abort():
# GLib-GObject:ERROR:gvaluetypes.c:457:_g_value_types_init:
# assertion failed: (type == G_TYPE_CHAR)
SHARED_LIBS += glib-2.0                  4201.6 # 0.6800.2
SHARED_LIBS += gobject-2.0               4200.13 # 0.6800.2
SHARED_LIBS += gthread-2.0               4200.13 # 0.6800.2
SHARED_LIBS += gmodule-2.0               4200.13 # 0.6800.2
SHARED_LIBS += gio-2.0                   4200.13 # 0.6800.2

# LGPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c elf>=2 ffi iconv intl pcre pthread z

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook

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
			-Dlibmount=disabled \
			-Dman=true

# XXX G_ENABLE_DEBUG seems to enable some badly tested code;
# it can easily trigger a segfault in ConsoleKit2, for instance:
# dbus-send --system --print-reply --dest=org.freedesktop.ConsoleKit \
#	/org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Inhibit \
#	string:"shutdown:sleep" string:"foo" string:"bar" string:"block
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
