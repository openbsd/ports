# $OpenBSD: Makefile,v 1.32 2015/05/05 17:00:16 sthen Exp $

COMMENT=		last.fm client for GNOME

V=			0.8.2
DISTNAME=		vagalume_$V.orig
PKGNAME=		vagalume-$V
REVISION=		14
CATEGORIES=		audio x11

HOMEPAGE=		http://vagalume.igalia.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo crypto curl
WANTLIB += dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstinterfaces-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz idn lzma m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs ssl stdc++ xcb xcb-render xcb-shm xml2 z

MASTER_SITES=		http://vagalume.igalia.com/files/source/

WRKDIST=		${WRKDIR}/vagalume-$V

MODULES+=		devel/gettext \
			textproc/intltool

RUN_DEPENDS+=		devel/desktop-file-utils \
			multimedia/gstreamer-0.10/plugins-good \
			multimedia/gstreamer-0.10/plugins-ugly \
			x11/gtk+3,-guic

LIB_DEPENDS=		devel/libidn \
			devel/libnotify>=0.7.2 \
			multimedia/gstreamer-0.10/plugins-base \
			net/curl \
			x11/dbus-glib \
			x11/gtk+2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-platform=gnome \
			--enable-tray-icon \
			--enable-dbus \
			--enable-im-status \
			--enable-gconf
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		themebigicondir="${PREFIX}/share/icons/hicolor/scalable/actions" \
			themesmallicondir="${PREFIX}/share/icons/hicolor/scalable/actions"

.include <bsd.port.mk>
