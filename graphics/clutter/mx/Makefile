# $OpenBSD: Makefile,v 1.6 2012/09/25 23:50:13 brad Exp $

COMMENT=	clutter widget toolkit

V=		1.4.7
HASH=		32cb530
DISTNAME=	clutter-project-mx-${V}-0-g32cb530
PKGNAME=	mx-${V}
REVISION=	0

SHARED_LIBS +=  mx-1.0                    0.0 # 406.0
SHARED_LIBS +=  mx-gtk-1.0                0.0 # 0.0

MASTER_SITES=	http://distfiles.nl/

WANTLIB += GL X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject clutter-1.0 cogl cogl-pango dbus-1
WANTLIB += dbus-glib-1 drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 json-glib-1.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 stdc++
WANTLIB += xcb xcb-aux xcb-render xcb-shm z
WANTLIB += harfbuzz icudata icule icuuc

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/startup-notification \
			graphics/clutter/core \
			x11/dbus-glib \
			x11/gtk+2

CONFIGURE_ARGS=		--without-glade

WRKDIST=		${WRKDIR}/clutter-project-mx-${HASH}/

# XXX: Remove when updating to a real release tarball, instead of a git tag
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool # for AC_PROG_LIBTOOL
AUTOMAKE_VERSION=	1.12
AUTOCONF_VERSION=	2.69

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>

