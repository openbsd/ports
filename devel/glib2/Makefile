# $OpenBSD: Makefile,v 1.247 2015/09/24 10:23:42 ajacoutot Exp $

COMMENT=		general-purpose utility library

GNOME_PROJECT=		glib
GNOME_VERSION=		2.46.0
PKGNAME=		${DISTNAME:S/glib/glib2/}

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# according to upstream, there should never be a need to bump major; doing so
# would trigger an abort():
# GLib-GObject:ERROR:gvaluetypes.c:457:_g_value_types_init:
# assertion failed: (type == G_TYPE_CHAR)
SHARED_LIBS +=  glib-2.0             4200.2   # 4600.0
SHARED_LIBS +=  gmodule-2.0          4200.2   # 4600.0
SHARED_LIBS +=  gthread-2.0          4200.2   # 4600.0
SHARED_LIBS +=  gobject-2.0          4200.2   # 4600.0
SHARED_LIBS +=  gio-2.0              4200.2   # 4600.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c elf ffi pcre pthread z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook

LIB_DEPENDS=		devel/pcre \
			devel/libelf \
			devel/libffi

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (stack >= 24576)
BUILD_DEPENDS +=	x11/dbus
TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		devel/desktop-file-utils \
			x11/dbus

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--with-pcre=system \
			--disable-fam

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mgcc3}
PATCH_LIST=	patch-* gcc3-*
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
		${WRKSRC}/docs/reference/gio/html/glib-compile-schemas.html \
		${WRKSRC}/docs/reference/gio/glib-compile-schemas.xml
	sed -i "s,/var/lib/dbus,/var/db/dbus,g" \
		${WRKSRC}/gio/gdbusconnection.c \
		${WRKSRC}/gio/gdbusprivate.c \
		${WRKSRC}/po/*.po

.include <bsd.port.mk>
