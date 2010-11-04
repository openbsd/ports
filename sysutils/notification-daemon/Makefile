# $OpenBSD: Makefile,v 1.16 2010/11/04 09:50:44 ajacoutot Exp $

COMMENT=		send small notifications to your desktop

GNOME_VERSION=		0.5.0
GNOME_PROJECT=		notification-daemon

CATEGORIES=		sysutils net

HOMEPAGE=		http://www.galago-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm execinfo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 vorbis
WANTLIB += vorbisfile xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-shm z canberra-gtk canberra ltdl notify wnck-1

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		::devel/libnotify \
			::devel/libtool,-ltdl \
			::devel/libwnck \
			::audio/libcanberra
RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

MODGCONF2_SCHEMAS_DIR=	notification-daemon

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-dbus-sys="${SYSCONFDIR}/dbus-1/system.d"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
